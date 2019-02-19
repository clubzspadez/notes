module CafeWell
  class Navbar < Component
    body css('body > header')
    element :main_menu, NavbarMainMenu, css('#menu-nav')
    element :user, NavbarUser, css_rel('.message-center')
    element :go_homepage, Element::Button, css_rel('#home-link .main-nav__link')
    element :toggle_main_menu, Element::Button, css_rel('.main-nav__link')
    element :loading_spinner, Element::Text, css('div.loading')
    def is_loaded
      is_toggle_main_menu(:is_visible) && is_loading_spinner(:is_not_present)
    end
    def go_profile
      user.go_profile
    end
    def go_menu_item(item_name)
      execute_with_rescue(Selenium::WebDriver::Error::TimeOutError, 'Toggle main menu'){
        toggle_main_menu unless is_main_menu :is_visible
        wait_until(:main_menu, :is_visible, delay: 5)
      }
      execute_with_rescue(NoMethodError, 'Navbar menu item wasnt available, retrying...'){
        section = main_menu.sections.find {|k, section| section.items.has_key?(item_name)}
        section[1].items[item_name].goto
      }
    end
    def find_menu_heading(item_name)
      toggle_main_menu unless is_main_menu :is_visible
      wait_until(:main_menu, :is_visible)
      section_heading = main_menu.sections[item_name]
    end
  end
end


# * Use ‘is_loaded’ method to check that component is fully loaded. Web driver is going to hold the test execution until the logic inside ‘is_loaded’ evaluates to true. This is especially important to setup for Chrome runs, as Chrome driver is the fastest in executing steps.
# * Use ‘css_rel’ locators to find elements within ‘body’. If the element lays outside, then use ‘css’
# * Do not use xpath locators unless you absolutely have to. Using xpath will break tests in different browsers.
#Best way is to find unique id of the element:
      #  css('#menu-nav')
      #  If id is not available, then find the css locator. Sometimes it may require some time to find
      #  css_rel('.panel--secondary > div > .panel--secondary')
      #   Refer to css documentation to figure out different ways of locating css: https://www.w3schools.com/cssref/css_selectors.asp
#
#
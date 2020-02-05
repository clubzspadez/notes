


// const axios = require('axios')
// * import axios from modules
// ------------------------------------------------------------------------
// const {
//     axios: {
//         httpMaxRetries,
//         httpMaxRetryDelayMs,
//         httpRetryEnabled,
//         httpRetryForStatusCodes
//     }
// } = require('config')
// * import custom values from config for api retries
// ------------------------------------------------------------------------
// const logger = require('@welltok/node-json-log').createLogger()
// * custom logger
// ------------------------------------------------------------------------
// const INVALID_CUSTOM_ACTION_CONFIGURATION = 'invalid_custom_action_configuration'
//// ------------------------------------------------------------------------


//! custom async function that takes in config object
// * this function gets invoked when the request is triggered
// ------------------------------------------------------------------------
// async function requestInterceptor (config) {
//  * The config thats received is seen in the api call
//  * ie: lib/hub-client.js
//  * -> line 38 check the figure above figure 1
//     logger.info({
//         msg: `Axios request start`,
//         scope: 'axios.request.start',
//         url: config.url
//     })
//   * ^ at the beginning of this function we pass an object to the logger using the info method
//   * ^ we then specify the following props
//   *   - msg -> which contains a string to indicate the start of the request
//   *   - scope -> scopes value should be a string composed of comma separated scope/log_tag/trace_tag tags.
//   *           -> SCOPE=programs-service.message.handler.activities.complete
//   *   - url -> url passed into request/config
// ------------------------------------------------------------------------
//
//
//     const isInterpretCodeAsInvalid = config.interpretCodeAs && !Array.isArray(config.interpretCodeAs)
//     const isHttpRetryForStatusCodesInvalid = config.httpRetryForStatusCodes && !Array.isArray(config.httpRetryForStatusCodes)
//     * ^ isInterpretCodeAsInvalid(boolean) -> checks if config has interpretCodeAs prop/key and if it is not an array
//     * ^ isHttpRetryForStatusCodesInvalid(boolean) -> checks if config has httpRetryForStatusCodes and if it is not an array
//
//     if (isInterpretCodeAsInvalid || isHttpRetryForStatusCodesInvalid) {
//         logger.report({
//             msg: `Axios request configuration invalid. ${isInterpretCodeAsInvalid ? 'interpretCodeAs' : 'httpRetryForStatusCodes'} must be an array`,
//             scope: 'axios.request.invalid_configuration',
//             url: config.url
//         })
//
//         throw new axios.Cancel(INVALID_CUSTOM_ACTION_CONFIGURATION)

//     }

    //  * ^ if that is the case we then throw an error with logger report
    //  * passing a msg, scope and ur
    //  * we then cancel the request with `throw new axios.Cancel(INVALID_CUSTOM_ACTION_CONFIGURATION)`
//     return config
// }


// -----------------------------------------------------------------------
//    ______ _                        __
//   |  ____(_)                      /_ |
//   | |__   _  __ _ _   _ _ __ ___   | |
//   |  __| | |/ _` | | | | '__/ _ \  | |
//   | |    | | (_| | |_| | | |  __/  | |
//   |_|    |_|\__, |\__,_|_|  \___|  |_|
//              __/ |
//             |___/

// getActivityCodesBySponsors (sponsorUuidList, isShared, requestClient = client) {
//     const url = 'request/activityCodeMappings/getBySponsorIdList'
//
//     return requestClient
//       .post(
//     ! url => url,
//     ! data => {
//         isShared: isShared,
//         sponsorIdList: sponsorUuidList
//       },
//     ! config => {
//         headers: getDefaultHeaders(url),
//         interpretCodeAs: [{ body: { data: [] }, status: 404 }]
//       }
//       )
//       .then((response) => response)

//  * ^ everything passed into .post(url[, data,[,config]]) would be considered config options
//   }
// -----------------------------------------------------------------------

// axios.interceptors.request.use(requestInterceptor)
// * ^ this adds a new interceptor to axios interceptor stack

//! Custom async function takes in error object from response
// * this function gets invoked when the request is triggered
// async function responseInterceptor (error) {
//     const { response, config = {}, message } = error
//     const retryEnabled = config.httpRetryEnabled || httpRetryEnabled
//     const maxRetryNumber = config.httpMaxRetries || httpMaxRetries
//     const retryForStatusCodes = config.httpRetryForStatusCodes || httpRetryForStatusCodes
//     const retryDelay = config.httpMaxRetryDelayMs || httpMaxRetryDelayMs
//     * ^ the follow variable declaractions contain either config options from response or env values from the axios config that are defined
//
//     if (message === INVALID_CUSTOM_ACTION_CONFIGURATION) {
//         throw error
//     }
//
//     const shouldInterpretCodeAs = config.interpretCodeAs && config.interpretCodeAs.find(({ status }) => status === response.status)
//     * ^ shouldInterpretCodeAs -> checks for interpretCodeAs on config and tries to find if response code matches our given options for interpretCodeAs[]
//     * will contain the contents of the {} of the interpretCodeAs that was passed in
//
//     if (shouldInterpretCodeAs) {
//         logger.info({
//             body: shouldInterpretCodeAs,
//             msg: `Axios resolved response ${response.status} as success`,
//             scope: 'axios.response.error.resolve_as_success',
//             status: response.status,
//             url: config.url
//         })
//
//         return shouldInterpretCodeAs.body || error
//     }
//
//     if (!isRetryEnabled(retryEnabled, response, retryForStatusCodes)) {
//         logger.report({
//             msg: 'Retry is disabled',
//             response_status: response && response.status,
//             scope: 'axios.response.error.request_reject_without_retry',
//             url: config.url
//         })
//
//         throw error
//     }
//
//     if (!config.numberOfRetries) {
//         config.numberOfRetries = config.numberOfRetries || 0
//     }
//
//     if (config.numberOfRetries >= maxRetryNumber) {
//         logger.report({
//             method: config.method,
//             msg: message,
//             retry_number: config.numberOfRetries,
//             scope: 'axios.response.error.request_reject_after_retry',
//             url: config.url
//         })
//
//         throw error
//     }
//
//     config.numberOfRetries += 1
//     setTimeout(() => {
//         logger.warn({
//             msg: 'Retrying axios request',
//             retry_number: config.numberOfRetries,
//             scope: 'axios.response.error.request_retry',
//             url: config.url
//         })
//
//         return axios.request(config)
//     }, retryDelay)
// }
//
// function isRetryEnabled (retryEnabled, response, retryForStatusCodes) {
//     return retryEnabled && response && (response.status >= 500 || retryForStatusCodes.find((status) => status === response.status))
// }
//
// axios.interceptors.response.use(null, responseInterceptor)
// * this adds a new interceptor to axios interceptor stack
//
// module.exports = {
//     axios,
//     requestInterceptor,
//     responseInterceptor,
//     INVALID_CUSTOM_ACTION_CONFIGURATION
// }


- if we request something we need to log it
- How did you approach this problem
  - needed to decide if we needed a wrap
  - every http library has interceptors
  -

//
// AC:
//
// 1) All outbound HTTP(s) API calls must use configurable retries
// ? These retries are done on the intercepter for response -> httpRetryEnabled
//  *  -> We check response
//  *  -> If response has error
// 2) The configuration must be able to specify the time between retries
// ? Configuration is set in axios config -> httpMaxRetryDelayMs
// * -> specified in config for request
// * -> used in intercepter for response
// 3) The configuration must be able to specify the number of retries
// ? Configuration is set in axios config -> httpMaxRetries
// * -> specified in config for request
// * -> used in intercepter for response
// 4) For each retry a warning message must be emitted that enables operations to identify flaky endpoints i a standardized way
// ? These warnings are invoked in the intercepter for response
// 5) If, after retrying the remote service, the call still fails, the full details (with the exception of any PHI) must be logged with the same standardized information in a way that the call can be identified and traced along with the flaky calls.
// ? These warnings are invoked in the intercepter for response
// 6) Identify which response codes (ie: 404) represent empty result and should return nothing instead of  an error.
// * this can be sent on config once decided -> interpretCodeAs: [{ body: [], status: 404 }]
// 7) A single standard retry count and delay are acceptable
// 8) for each outbound call, minimally log the start attempt.
// ? this is done on a interceptor for request

// Rails.logger.info(
//     msg: 'Starting wellsource biometric upload',
//     scope: 'wellsource.biometric.upload.start-worker',
//     profile: profile.id,
//     program_variant: profile.program_variant&.id,
//     programs_service_activity: profile.programs_service_activity&.id,
//     biometric: biometric&.dig(:id)
// )
//

// const logger = require('@welltok/node-json-log').createLogger()
// logger.trace({
//     chapter: chapter.uuid,
//     chapterEndsAt: chapter.endsAt,
//     chapterStartsAt: chapter.startsAt,
//     platformId: userId,
//     programPace: program.pace,
//     scope: `${BASE_TAG}.filter.activities.time.based`,
//     msg: `Time based program for user ${userId}`
// })

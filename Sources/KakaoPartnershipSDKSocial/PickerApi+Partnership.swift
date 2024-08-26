/*
  Copyright 2024 Kakao Corp.
 
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
 
     http://www.apache.org/licenses/LICENSE-2.0
 
  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
 */
import Foundation
import KakaoSDKFriend

extension PickerApi {
    /// 풀 스크린 형태의 싱글 피커 요청 \
    /// Requests a single picker in full-screen view
    /// ## SeeAlso
    /// - [`PickerFriendRequestParams`](https://developers.kakao.com/sdk/reference/ios/release/KakaoSDKFriendCore/documentation/kakaosdkfriendcore/pickerfriendrequestparams)
    /// - [`SelectedUsers`](https://developers.kakao.com/sdk/reference/ios/release/KakaoSDKFriendCore/documentation/kakaosdkfriendcore/selectedusers)
    public func selectFriend(param: PickerFriendRequestParams, completion: @escaping (SelectedUsers?, Error?) -> Void) {
        prepareCallPickerApi { [weak self] error in
            if let error {
                completion(nil, error)
                return
            }
            
            self?.____sf(params: param) { selectedUser, responseInfo, error in
                completion(selectedUser, self?.castSdkError(responseInfo: responseInfo, error: error))
            }
        }
    }
    
    /// 팝업 형태의 싱글 피커 요청 \
    /// Requests a single picker in pop-up view
    /// ## SeeAlso
    /// - [`PickerFriendRequestParams`](https://developers.kakao.com/sdk/reference/ios/release/KakaoSDKFriendCore/documentation/kakaosdkfriendcore/pickerfriendrequestparams)
    /// - [`SelectedUsers`](https://developers.kakao.com/sdk/reference/ios/release/KakaoSDKFriendCore/documentation/kakaosdkfriendcore/selectedusers)
    public func selectFriendPopup(param: PickerFriendRequestParams, completion: @escaping (SelectedUsers?, Error?) -> Void) {
        prepareCallPickerApi { [weak self] error in
            if let error {
                completion(nil, error)
                return
            }
            
            self?.____sfp(params: param) { selectedUser, responseInfo, error in
                completion(selectedUser, self?.castSdkError(responseInfo: responseInfo, error: error))
            }
        }
    }
    
    /// 풀 스크린 형태의 멀티 피커 요청 \
    /// Requests a multi-picker in full-screen view
    /// ## SeeAlso
    /// - [`PickerFriendRequestParams`](https://developers.kakao.com/sdk/reference/ios/release/KakaoSDKFriendCore/documentation/kakaosdkfriendcore/pickerfriendrequestparams)
    /// - [`SelectedUsers`](https://developers.kakao.com/sdk/reference/ios/release/KakaoSDKFriendCore/documentation/kakaosdkfriendcore/selectedusers)
    public func selectFriends(param: PickerFriendRequestParams, completion: @escaping (SelectedUsers?, Error?) -> Void) {
        prepareCallPickerApi { [weak self] error in
            if let error {
                completion(nil, error)
                return
            }
            
            self?.____sfs(params: param) { selectedUsers, responseInfo, error in
                completion(selectedUsers, self?.castSdkError(responseInfo: responseInfo, error: error))
            }
            
        }
    }
    
    /// 팝업 형태의 멀티 피커 요청 \
    /// Requests a multi-picker in pop-up view
    /// ## SeeAlso
    /// - [`PickerFriendRequestParams`](https://developers.kakao.com/sdk/reference/ios/release/KakaoSDKFriendCore/documentation/kakaosdkfriendcore/pickerfriendrequestparams)
    /// - [`SelectedUsers`](https://developers.kakao.com/sdk/reference/ios/release/KakaoSDKFriendCore/documentation/kakaosdkfriendcore/selectedusers)
    public func selectFriendsPopup(param: PickerFriendRequestParams, completion: @escaping (SelectedUsers?, Error?) -> Void) {
        prepareCallPickerApi { [weak self] error in
            if let error {
                completion(nil, error)
                return
            }
            
            self?.____sfsp(params: param) { selectedUsers, responseInfo, error in
                completion(selectedUsers, self?.castSdkError(responseInfo: responseInfo, error: error))
            }            
        }
    }
}

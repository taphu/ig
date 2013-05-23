-- | the public API for Instagram access
module Instagram
  (
  -- generic types and functions
  InstagramT
  ,runInstagramT
  ,runResourceInIs
  ,IGException

  -- authentication
  ,RedirectUri
  ,getUserAccessTokenURL1
  ,getUserAccessTokenURL2
  ,Credentials(..)
  ,OAuthToken(..)
  ,AccessToken
  ,User(..)
  ,Scope(..)
  
  -- data
  ,Envelope(..)
  ,Pagination(..)
  ,Media(..)
  ,Location(..)
  ,ImageData(..)
  ,Images(..)
  ,Caption(..)
  ,Collection(..)
  
  -- user
  ,RecentParams(..)
  ,getRecent
  ,SelfLikedParams(..)
  ,getSelfLiked
  
  -- real time
  ,Aspect -- do not export constructor since only media is supported
  ,media
  ,CallbackUrl
  ,Subscription(..)
  ,createSubscription
  ,listSubscriptions
  ,deleteSubscriptions
  ,SubscriptionRequest(..)
  ,SubscriptionParams(..)
  ,DeletionParams(..)
  ,Update(..)
  ) where

import Instagram.Auth
import Instagram.Monad
import Instagram.RealTime
import Instagram.Types
import Instagram.Users
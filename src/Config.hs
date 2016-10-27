{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

module Config where

import Data.Aeson
import Data.Text
import qualified Data.ByteString.Lazy as B

data TrinketConfig = TrinketConfig { id :: Int
                                   , name :: Text
                                   , iLvls :: [Int]
                                   , onUse :: Bool
                                   } deriving (Show)

instance FromJSON TrinketConfig where
   parseJSON = withObject "trinketConfig" $ \o -> do
      id <- o .: "id"
      name  <- o .: "name"
      iLvls <- o .:? "iLvls" .!= [850, 860, 870, 880]
      onUse <- o .:? "onUse" .!= False
      return TrinketConfig{..}

parseConfig :: B.ByteString -> Either String [TrinketConfig]
parseConfig b = eitherDecode b :: (Either String [TrinketConfig])

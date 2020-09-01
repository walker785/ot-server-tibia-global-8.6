-- Global Server Config

-- Account manager 
accountManager = true
namelockManager = true
newPlayerChooseVoc = false
newPlayerSpawnPosX = 32097
newPlayerSpawnPosY = 32219
newPlayerSpawnPosZ = 7
newPlayerTownId = 6
newPlayerLevel = 1
newPlayerMagicLevel = 0
generateAccountNumber = false

-- Unjustified kills 
useFragHandler = true 
redSkullLength = 30 * 24 * 60 * 60 
blackSkullLength = 45 * 24 * 60 * 60 
dailyFragsToRedSkull = 3 
weeklyFragsToRedSkull = 5 
monthlyFragsToRedSkull = 10 
dailyFragsToBlackSkull = dailyFragsToRedSkull 
weeklyFragsToBlackSkull = weeklyFragsToRedSkull 
monthlyFragsToBlackSkull = monthlyFragsToRedSkull 
dailyFragsToBanishment = dailyFragsToRedSkull 
weeklyFragsToBanishment = weeklyFragsToRedSkull 
monthlyFragsToBanishment = monthlyFragsToRedSkull 
blackSkulledDeathHealth = 40 
blackSkulledDeathMana = 0 
useBlackSkull = true 
advancedFragList = false

-- Banishments 
notationsToBan = 3 
warningsToFinalBan = 4 
warningsToDeletion = 5 
banLength = 7 * 24 * 60 * 60 
killsBanLength = 7 * 24 * 60 * 60 
finalBanLength = 30 * 24 * 60 * 60 
ipBanishmentLength = 1 * 24 * 60 * 60 
broadcastBanishments = true 
maxViolationCommentSize = 200 
violationNameReportActionType = 2 
autoBanishUnknownBytes = false

-- Battle
worldType = "open" 
protectionLevel = 1 
pvpTileIgnoreLevelAndVocationProtection = true 
pzLocked = 60 * 1000 
huntingDuration = 60 * 1000 
criticalHitChance = 7 
criticalHitMultiplier = 1 
displayCriticalHitNotify = false 
removeWeaponAmmunition = true 
removeWeaponCharges = true
removeRuneCharges = true 
whiteSkullTime = 15 * 60 * 1000 
noDamageToSameLookfeet = false 
showHealingDamage = true 
showHealingDamageForMonsters = false
fieldOwnershipDuration = 5 * 1000
stopAttackingAtExit = false
loginProtectionPeriod = 10 * 1000
deathLostPercent = 10 
stairhopDelay = 2 * 1000 
pushCreatureDelay = 2 * 1000 
deathContainerId = 1987 
gainExperienceColor = 215 
addManaSpentInPvPZone = true 
squareColor = 0 
allowFightback = true 
fistBaseAttack = 7 

-- Connection config 
worldId = 0 
ip = "127.0.0.1" 
loginPort = 7171 
gamePort = 7172 
loginTries = 10 
retryTimeout = 5 * 1000 
loginTimeout = 60 * 1000 
maxPlayers = 1000 
motd = "Welcome to Tibia." 
displayOnOrOffAtCharlist = false 
onePlayerOnlinePerAccount = true 
allowClones = false 
serverName = "Mitera" 
loginMessage = "Welcome. Explore the most of this world, for great surprises await you." 
statusTimeout = 5 * 60 * 1000 
replaceKickOnLogin = true 
forceSlowConnectionsToDisconnect = false 
loginOnlyWithLoginServer = false 
premiumPlayerSkipWaitList = false 

-- Database 
sqlType = "sqlite"
sqlHost = "localhost"
sqlPort = 3306
sqlUser = "root"
sqlPass = ""
sqlDatabase = "mitera"
sqlFile = "mitera.s3db"
sqlKeepAlive = 0
mysqlReadTimeout = 10
mysqlWriteTimeout = 10 

-- Deathlist 
deathListEnabled = false 
deathListRequiredTime = 1 * 60 * 1000 
deathAssistCount = 19 
maxDeathRecords = 5 

-- Guilds 
ingameGuildManagement = true 
levelToFormGuild = 20 
premiumDaysToFormGuild = 0 
guildNameMinLength = 4 
guildNameMaxLength = 20 

-- Highscores 
highscoreDisplayPlayers = 15 
updateHighscoresAfterMinutes = 60 

-- Houses 
buyableAndSellableHouses = true 
houseNeedPremium = true 
bedsRequirePremium = true 
levelToBuyHouse = 20 
housesPerAccount = 0 
houseRentAsPrice = false 
housePriceAsRent = false 
housePriceEachSquare = 1000 
houseRentPeriod = "never" 
houseCleanOld = 0 
guildHalls = false 

-- Item usage 
timeBetweenActions = 200 
timeBetweenExActions = 1000 
hotkeyAimbotEnabled = true 

-- Map 
mapName = "MiteraWorld.otbm" 
mapAuthor = "Cipsoft" 
randomizeTiles = true 
storeTrash = true 
cleanProtectedZones = true 
mailboxDisabledTowns = ""

-- Process 
defaultPriority = "high" 
niceLevel = 5
coresUsed = "-1" 

-- Startup 
startupDatabaseOptimization = true 
updatePremiumStateAtStartup = true 
confirmOutdatedVersion = false

-- Spells 
formulaLevel = 5.0 
formulaMagic = 1.0 
bufferMutedOnSpellFailure = false 
spellNameInsteadOfWords = false 
emoteSpells = false

-- Outfits 
allowChangeOutfit = true 
allowChangeColors = true 
allowChangeAddons = true 
disableOutfitsForPrivilegedPlayers = false 
addonsOnlyPremium = true

-- Miscellaneous 
dataDirectory = "data/" 
logsDirectory = "data/logs/" 
bankSystem = true 
displaySkillLevelOnAdvance = false 
promptExceptionTracerErrorBox = true 
maximumDoorLevel = 500 
maxMessageBuffer = 4

-- VIP list 
separateVipListPerCharacter = false 
vipListDefaultLimit = 20 
vipListDefaultPremiumLimit = 100 

-- Saving-related 
saveGlobalStorage = true 
useHouseDataStorage = false 
storePlayerDirection = false 

-- Loot 
checkCorpseOwner = true 
monsterLootMessage = 3 
monsterLootMessageType = 25 

-- Ghost mode 
ghostModeInvisibleEffect = false 
ghostModeSpellEffects = true

-- Limits 
idleWarningTime = 9999 * 60 * 1000 
idleKickTime = 10000 * 60 * 1000 
reportsExpirationAfterReads = 1 
playerQueryDeepness = 2 
tileLimit = 0 
protectionTileLimit = 0 
houseTileLimit = 0 

-- Premium-related 
freePremium = false
premiumForPromotion = true

-- Blessings 
blessings = true 
blessingOnlyPremium = true 
blessingReductionBase = 30 
blessingReductionDecrement = 5 
eachBlessReduction = 8

-- Rates 
experienceStages = true
rateExperience = 1.0 
rateExperienceFromPlayers = 0 
rateSkill = 2.0
rateMagic = 6.0 
rateLoot = 2.0
rateSpawn = 0 

-- Monster rates 
rateMonsterHealth = 1.0 
rateMonsterMana = 1.0 
rateMonsterAttack = 1.0 
rateMonsterDefense = 1.0

-- Experience from players 
minLevelThresholdForKilledPlayer = 0 
maxLevelThresholdForKilledPlayer = 0 

-- Stamina 
rateStaminaLoss = 1 
rateStaminaGain = 12 
rateStaminaThresholdGain = 24
staminaRatingLimitTop = 40 * 60 
staminaRatingLimitBottom = 14 * 60 
staminaLootLimit = 14 * 60 
rateStaminaAboveNormal = 1.5 
rateStaminaUnderNormal = 0.5 
staminaThresholdOnlyPremium = true 

-- Party 
experienceShareRadiusX = 30 
experienceShareRadiusY = 30 
experienceShareRadiusZ = 1 
experienceShareLevelDifference = 2 / 3 
extraPartyExperienceLimit = 20 
extraPartyExperiencePercent = 5 
experienceShareActivity = 2 * 60 * 1000

-- Global save 
globalSaveEnabled = true 
globalSaveHour = 1 
globalSaveMinute = 0 
shutdownAtGlobalSave = false 
cleanMapAtGlobalSave = false

-- Spawns 
deSpawnRange = 2 
deSpawnRadius = 50

-- Summons 
maxPlayerSummons = 2 
teleportAllSummons = false 
teleportPlayerSummons = false

-- Status 
statusPort = 7171 
ownerName = "Milton Alves" 
ownerEmail = "milton.alvesjr@yahoo.com.br"
url = "" 
location = "Brasil" 
displayGamemastersWithOnlineCommand = false

-- Logs 
displayPlayersLogging = true 
prefixChannelLogs = "" 
runFile = "" 
outputLog = "" 
truncateLogsOnStartup = false 

-- Manager
managerPort = 7171
managerLogs = true 
managerPassword = "" 
managerLocalhostOnly = true 
managerConnectionsLimit = 1 

-- Admin 
adminPort = 7171 
adminLogs = true 
adminPassword = "" 
adminLocalhostOnly = true 
adminConnectionsLimit = 1 
adminRequireLogin = true 
adminEncryption = "" 
adminEncryptionData = ""
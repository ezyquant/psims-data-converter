CREATE TABLE "ADJUST_FACTOR" (
	"I_SECURITY" INTEGER, 
	"D_EFFECT" TEXT, 
	"N_CA_TYPE" TEXT, 
	"R_ADJUST_FACTOR" REAL, 
	"R_PRIOR_ADJUST_FACTOR" REAL
);
CREATE TABLE "CALENDAR" (
	"D_TRADE" TEXT, 
	"F_FIRST_WEEK" TEXT, 
	"F_END_WEEK" TEXT, 
	"F_MONTH" TEXT, 
	"F_YEAR" TEXT
);
CREATE TABLE "CHANGE_NAME_SECURITY" (
	"I_SECURITY" INTEGER, 
	"D_NEWS" TEXT, 
	"D_EFFECT" TEXT, 
	"N_SECURITY_OLD" TEXT, 
	"N_SECURITY_NEW" TEXT
);
CREATE TABLE "COMPANY" (
	"I_COMPANY" INTEGER, 
	"N_COMPANY_T" TEXT, 
	"N_COMPANY_E" TEXT, 
	"F_COMP_TYPE" TEXT, 
	"F_RISK_MANAGER" TEXT, 
	"A_COMPANY_T" TEXT, 
	"A_COMPANY_E" TEXT, 
	"I_ZIP" TEXT, 
	"E_TEL" TEXT, 
	"E_FAX" TEXT, 
	"E_EMAIL" TEXT, 
	"E_URL" TEXT, 
	"D_ESTABLISH" TEXT, 
	"D_APPLY" TEXT, 
	"E_DVD_POLICY_T" TEXT, 
	"E_DVD_POLICY_E" TEXT, 
	"N_FILE_T" TEXT, 
	"N_FILE_E" TEXT, 
	"I_CREDIT_RATING" TEXT, 
	"I_RATING_OUTLOOK" TEXT, 
	"E_CRA_T" TEXT, 
	"E_CRA_E" TEXT, 
	"D_RATING" TEXT
);
CREATE TABLE "DAILY_SECTOR_INFO" (
	"D_TRADE" TEXT, 
	"I_MARKET" TEXT, 
	"I_INDUSTRY" INTEGER, 
	"I_SECTOR" INTEGER, 
	"I_SUBSECTOR" INTEGER, 
	"R_INDEX_PRIOR" REAL, 
	"R_INDEX_OPEN" REAL, 
	"R_INDEX_HIGH" REAL, 
	"R_INDEX_LOW" REAL, 
	"R_INDEX_CLOSE" REAL, 
	"Q_TRANS" INTEGER, 
	"Q_VOLUME" INTEGER, 
	"M_VALUE" REAL, 
	"M_MKT_PE" REAL, 
	"M_MKT_PBV" REAL, 
	"M_MKT_YIELD" REAL, 
	"M_MKT_CAP" REAL, 
	"R_TURNOVER" REAL, 
	"Q_SHARE_LISTED_AVG" INTEGER, 
	"R_BETA" REAL, 
	"Q_TURNOVER_VOLUME" INTEGER, 
	"P_12M_DVD_YIELD" REAL, 
	"M_MKT_EPS" REAL
);
CREATE TABLE "DAILY_STOCK_TRADE" (
	"D_TRADE" TEXT, 
	"I_SECURITY" INTEGER, 
	"I_TRADING_METHOD" TEXT, 
	"I_TRADE_REPORT" TEXT, 
	"I_MARKET" TEXT, 
	"D_PRIOR" TEXT, 
	"Z_PRIOR" REAL, 
	"Z_OPEN" REAL, 
	"Z_HIGH" REAL, 
	"Z_LOW" REAL, 
	"Z_CLOSE" REAL, 
	"Z_AVERAGE" REAL, 
	"Z_LAST_BID" REAL, 
	"Z_LAST_OFFER" REAL, 
	"Q_TRANS" REAL, 
	"Q_VOLUME" REAL, 
	"M_VALUE" REAL
);
CREATE TABLE "DAILY_STOCK_STAT" (
	"D_TRADE" TEXT, 
	"I_SECURITY" INTEGER, 
	"I_MARKET" TEXT, 
	"I_INDUSTRY" INTEGER, 
	"I_SECTOR" INTEGER, 
	"I_SUBSECTOR" INTEGER, 
	"R_PE" REAL, 
	"R_PB" REAL, 
	"Z_PAR" REAL, 
	"R_DPS" REAL, 
	"P_DVD_YIELD" REAL, 
	"M_MKT_CAP" REAL, 
	"R_EPS" REAL, 
	"M_BOOK_VALUE" REAL, 
	"I_QUARTER_FIN" INTEGER, 
	"Q_MONTH_DVD" INTEGER, 
	"D_AS_OF" TEXT, 
	"D_DIVIDEND" TEXT, 
	"N_STATUS" TEXT, 
	"N_BENEFIT" TEXT, 
	"Q_SHARE_LISTED" INTEGER, 
	"R_TURNOVER" REAL, 
	"Q_SHARE_INDEX" INTEGER, 
	"F_NPG" TEXT, 
	"Q_TOTAL_VOLUME" REAL, 
	"M_TOTAL_VALUE" REAL, 
	"R_BETA" REAL, 
	"R_ROI" REAL, 
	"R_ACC_DPS" REAL, 
	"Q_DVD_PAYMENT" INTEGER, 
	"R_DVD_PAYOUT" REAL, 
	"D_EARNING" TEXT, 
	"R_IV" REAL, 
	"R_DELTA" REAL, 
	"F_NOTICE" TEXT, 
	"F_NON_COMPLIANCE" TEXT, 
	"F_STABILIZATION" TEXT, 
	"F_CALL_MARKET" TEXT, 
	"F_CAUTION" TEXT, 
	"P_12M_DVD_YIELD" REAL, 
	"R_PEG" REAL
);
CREATE TABLE "FINANCIAL_STAT_STD" (
	"I_SECURITY" INTEGER, 
	"I_FS_TYPE" TEXT, 
	"I_YEAR" INTEGER, 
	"I_QUARTER" INTEGER, 
	"D_AS_OF" TEXT, 
	"I_ACCT_FORM" INTEGER, 
	"N_ACCOUNT" TEXT, 
	"I_YEAR_STD" INTEGER, 
	"I_QUARTER_STD" INTEGER, 
	"D_AS_OF_STD" TEXT, 
	"D_START_YEAR_STD" TEXT, 
	"D_START_PERIOD_STD" TEXT, 
	"I_ACCT_TYPE" TEXT, 
	"M_ACCOUNT" REAL, 
	"M_ACC_ACCOUNT" REAL, 
	"M_ACCOUNT_AVG" REAL, 
	"M_ACC_ACCOUNT_12M" REAL
);
CREATE TABLE "FINANCIAL_SCREEN" (
	"I_SECURITY" INTEGER, 
	"I_YEAR" INTEGER, 
	"I_PERIOD_TYPE" TEXT, 
	"I_PERIOD" TEXT, 
	"I_QUARTER" INTEGER, 
	"F_ACCUMULATE" TEXT, 
	"D_AS_OF" TEXT, 
	"M_TOTAL_ASSET" REAL, 
	"M_TOTAL_LIABILITY" REAL, 
	"M_SHLD_EQUITY" REAL, 
	"M_TOTAL_REVENUE" REAL, 
	"M_TOTAL_EXPENSE" REAL, 
	"M_NET_PROFIT" REAL, 
	"R_EPS" REAL, 
	"R_DE" REAL, 
	"R_NET_PROFIT_MARGIN" REAL, 
	"R_GROSS_PROFIT_MARGIN" REAL, 
	"R_ROA" REAL, 
	"R_ROE" REAL, 
	"R_ASSET_TURNOVER" REAL, 
	"M_EBIT" REAL, 
	"R_FIX_ASSET_TURNOVER" REAL, 
	"R_CURRENT_RATIO" REAL, 
	"R_QUICK_RATIO" REAL, 
	"R_INTEREST_COVERAGE" REAL, 
	"R_AR_TURNOVER" REAL, 
	"R_INVENTORY_TURNOVER" REAL, 
	"R_AP_TURNOVER" REAL, 
	"Q_CASH_CYCLE" REAL, 
	"M_EBITDA" REAL, 
	"M_NET_OPERATING" REAL, 
	"M_NET_INVESTING" REAL, 
	"M_NET_FINANCING" REAL, 
	"M_NET_CASHFLOW" REAL, 
	"R_DSCR" REAL, 
	"R_IBDE" REAL
);
CREATE TABLE "MKTSTAT_DAILY_INDEX" (
	"D_TRADE" TEXT, 
	"I_MARKET" TEXT, 
	"I_INDUSTRY" INTEGER, 
	"I_SECTOR" INTEGER, 
	"I_SUBSECTOR" INTEGER, 
	"R_INDEX_HIGH" REAL, 
	"R_INDEX_LOW" REAL, 
	"R_INDEX_CLOSE" REAL, 
	"R_TRI" REAL
);
CREATE TABLE "MKTSTAT_DAILY_MARKET" (
	"D_TRADE" TEXT, 
	"I_MARKET" TEXT, 
	"I_INDUSTRY" INTEGER, 
	"I_SECTOR" INTEGER, 
	"I_SUBSECTOR" INTEGER, 
	"Q_TOTAL_TRANS" INTEGER, 
	"Q_TOTAL_VOLUME" INTEGER, 
	"M_TOTAL_VALUE" REAL, 
	"M_MKT_PE" REAL, 
	"M_MKT_PBV" REAL, 
	"M_MKT_YIELD" REAL, 
	"M_MKT_CAP" REAL, 
	"M_MKT_PAR_VALUE" REAL, 
	"Q_TRADING_DAY" INTEGER, 
	"Q_NEW_COMPANY" INTEGER, 
	"Q_DELISTED_COMPANY" INTEGER, 
	"Q_MOVE_IN_COMPANY" INTEGER, 
	"Q_MOVE_OUT_COMPANY" INTEGER, 
	"Q_LISTED_COMPANY" INTEGER, 
	"Q_LISTED_STOCK" INTEGER
);
CREATE TABLE "RIGHTS_BENEFIT" (
	"I_SECURITY" INTEGER, 
	"D_NEWS" TEXT, 
	"S_ANNOUNCE" INTEGER, 
	"N_CA_TYPE" TEXT, 
	"Z_RIGHTS" REAL, 
	"D_BOARD" TEXT, 
	"D_BEG_PAID" TEXT, 
	"D_END_PAID" TEXT, 
	"D_BOARD_ALLOT" TEXT, 
	"D_HOLDER" TEXT, 
	"D_EFFECT" TEXT, 
	"D_SIGN" TEXT, 
	"D_BEG_PERIOD" TEXT, 
	"D_END_PERIOD" TEXT, 
	"D_BOOK_CLOSED" TEXT, 
	"Q_ALLOT" INTEGER, 
	"Q_AUTHORIZED_CHG" INTEGER, 
	"Q_PAIDUP_CHG" INTEGER, 
	"Q_LISTED_CHG" INTEGER, 
	"Q_OLD_RATIO" REAL, 
	"Q_NEW_RATIO" REAL, 
	"F_SIGN" TEXT, 
	"Z_CLOSED_SIGN" REAL, 
	"Z_CLOSED_BEFORE_SIGN" REAL, 
	"I_SEC_TYPE_RIGHTS" TEXT, 
	"P_INT_RATE" REAL, 
	"Z_PAR" REAL, 
	"E_REMARK_T" TEXT, 
	"E_REMARK_E" TEXT, 
	"E_MEETING_T" TEXT, 
	"E_MEETING_E" TEXT, 
	"E_AGENDA_T" TEXT, 
	"E_AGENDA_E" TEXT, 
	"F_CANCEL" TEXT, 
	"I_TYPE_RIGHTS" TEXT, 
	"E_SUBSIDIARY_COMPANY_T" TEXT, 
	"E_SUBSIDIARY_COMPANY_E" TEXT, 
	"Q_UNDERLYING_OLD_RATIO" REAL, 
	"Q_UNDERLYING_NEW_RATIO" REAL, 
	"Z_UNDERLYING_RIGHTS" REAL, 
	"D_BEG_NOTICE" TEXT, 
	"D_END_NOTICE" TEXT, 
	"F_DVD_SOURCE" TEXT, 
	"F_MEETING_TYPE" TEXT, 
	"F_SUBSCRIBE_HOLDER" TEXT, 
	"I_SECURITY_REF" INTEGER, 
	"D_NEWS_REF" TEXT, 
	"S_ANNOUNCE_REF" INTEGER, 
	"D_RECORD" TEXT, 
	"D_END_SIGN" TEXT, 
	"R_PRIOR_ADJUST_FACTOR" REAL, 
	"Z_SIGN_PAR" REAL
);
CREATE TABLE "SECTOR" (
	"I_MARKET" TEXT, 
	"I_INDUSTRY" INTEGER, 
	"I_SECTOR" INTEGER, 
	"I_SUBSECTOR" INTEGER, 
	"F_DATA" TEXT, 
	"N_INDUSTRY" TEXT, 
	"E_INDUSTRY_T" TEXT, 
	"E_INDUSTRY_E" TEXT, 
	"N_SECTOR" TEXT, 
	"E_SECTOR_T" TEXT, 
	"E_SECTOR_E" TEXT, 
	"N_SUBSECTOR" TEXT, 
	"E_SUBSECTOR_E" TEXT, 
	"E_SUBSECTOR_T" TEXT, 
	"S_ORDER" INTEGER, 
	"D_CANCEL" TEXT, 
	"N_SYMBOL_FEED" TEXT, 
	"R_INDEX_BASE" REAL, 
	"D_INDEX_BASE" TEXT
);
CREATE TABLE "SECURITY" (
	"I_SECURITY" INTEGER, 
	"I_COMPANY" INTEGER, 
	"I_MARKET" TEXT, 
	"I_INDUSTRY" INTEGER, 
	"I_SECTOR" INTEGER, 
	"I_SUBSECTOR" INTEGER, 
	"I_SEC_TYPE" TEXT, 
	"N_SECURITY" TEXT, 
	"N_SECURITY_T" TEXT, 
	"N_SECURITY_E" TEXT, 
	"I_SECURITY_LOCAL" INTEGER, 
	"I_ISIN" TEXT, 
	"I_NATIVE" TEXT, 
	"F_FOREIGN_TRADE" TEXT, 
	f_frac_trade TEXT
);
CREATE TABLE "SECURITY_DETAIL" (
	"I_SECURITY" INTEGER, 
	"Q_SHARE_AUTHORIZED" INTEGER, 
	"Q_SHARE_ISSUED" INTEGER, 
	"Q_SHARE_PAIDUP" INTEGER, 
	"Q_SHARE_LISTED" INTEGER, 
	"Q_RESERVE" INTEGER, 
	"Q_SHARE_INDEX" INTEGER, 
	"Q_ACC_CONVERT" INTEGER, 
	"Q_TREASURY" INTEGER, 
	"Z_PAR" REAL, 
	"Z_MULTIPLIER" REAL, 
	"Z_IPO" REAL, 
	"Z_EXERCISE" REAL, 
	"D_LISTED" TEXT, 
	"D_DELISTED" TEXT, 
	"D_FIRST_TRADE" TEXT, 
	"D_LAST_TRADE" TEXT, 
	"D_FIRST_ISSUED" TEXT, 
	"D_EXPIRED" TEXT, 
	"D_FISCAL_END" TEXT, 
	"D_BEG_SUBSCRIPTION" TEXT, 
	"D_END_SUBSCRIPTION" TEXT, 
	"D_FIRST_PAID" TEXT, 
	"D_LAST_PAID" TEXT, 
	"Q_FIRST_RATIO" REAL, 
	"Q_LAST_RATIO" REAL, 
	"I_ACCT_FORM" INTEGER, 
	"I_COLLATERAL" TEXT, 
	"I_COVERED" TEXT, 
	"I_STYLE_OPTION" TEXT, 
	"I_TYPE_OPTION" TEXT, 
	"I_RISK_MANAGER" INTEGER, 
	"I_TYPE_ISSUER" TEXT, 
	"I_TYPE_COLLATERAL" TEXT, 
	"I_TYPE_PRICE" TEXT, 
	"P_COUPON" REAL, 
	"F_LISTED" TEXT, 
	"F_INTEREST" INTEGER, 
	"N_CURRENCY" TEXT, 
	"N_FILE_T" TEXT, 
	"N_FILE_E" TEXT, 
	"D_LAST_EXERCISE" TEXT, 
	"N_MKT_MAKER_E" TEXT, 
	"N_MKT_MAKER_T" TEXT, 
	"I_ISSUER_RATING" TEXT, 
	"N_RATING_AGENCY" TEXT, 
	"D_FIRST_EXERCISE" TEXT, 
	"D_AUTO_EXERCISE" TEXT, 
	"F_DELISTED" TEXT, 
	"F_INFRA_FUND" TEXT, 
	"Q_TTM" INTEGER, 
	"E_URL" TEXT, 
	"Q_WORKING_TTM" INTEGER, 
	"I_SUB_SEC_TYPE" TEXT, 
	"I_TYPE_OFFERING" TEXT, 
	"F_FRAC_TRADE" TEXT, 
	"I_TRADING_SESSION" TEXT
);
CREATE TABLE "SECURITY_INDEX" (
	"I_MARKET" TEXT, 
	"I_INDUSTRY" INTEGER, 
	"I_SECTOR" INTEGER, 
	"I_SUBSECTOR" INTEGER, 
	"D_AS_OF" TEXT, 
	"S_SEQ" INTEGER, 
	"I_SECURITY" INTEGER
);
CREATE TABLE "SIGN_POSTING" (
	"I_SECURITY" INTEGER, 
	"D_HOLD" TEXT, 
	"N_SIGN" TEXT, 
	"D_RELEASE" TEXT, 
	"N_FILE_HOLD_T" TEXT, 
	"N_FILE_HOLD_E" TEXT, 
	"N_FILE_RELEASE_T" TEXT, 
	"N_FILE_RELEASE_E" TEXT, 
	"Z_CLOSE_HOLD" REAL, 
	"Z_CLOSE_RELEASE" REAL, 
	"Z_CLOSE_BEFORE_HOLD" REAL
);

.class public interface abstract Lcom/seven/Z7/shared/PreferenceConstants$GeneralPreferences;
.super Ljava/lang/Object;
.source "PreferenceConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/shared/PreferenceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GeneralPreferences"
.end annotation


# static fields
.field public static final PEAK_TIME_KEYS:[Ljava/lang/String;

.field public static final QUITE_TIME_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WEEKEND_DAYS_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "checkbox_weekend_sat"

    aput-object v1, v0, v3

    const-string v1, "checkbox_weekend_sun"

    aput-object v1, v0, v4

    const-string v1, "checkbox_weekend_mon"

    aput-object v1, v0, v5

    const-string v1, "checkbox_weekend_tue"

    aput-object v1, v0, v6

    const-string v1, "checkbox_weekend_wed"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "checkbox_weekend_thu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "checkbox_weekend_fri"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/shared/PreferenceConstants$GeneralPreferences;->WEEKEND_DAYS_KEYS:Ljava/util/List;

    .line 135
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "checkbox_quiet_time_nights"

    aput-object v1, v0, v3

    const-string v1, "checkbox_quiet_time_weekends"

    aput-object v1, v0, v4

    const-string v1, "checkbox_quiet_time_low_power"

    aput-object v1, v0, v5

    const-string v1, "checkbox_quiet_time_roaming"

    aput-object v1, v0, v6

    const-string v1, "long_quiet_time_weekdays_push_stop"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "long_quiet_time_weekdays_push_start"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "checkbox_weekend_sat"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "checkbox_weekend_sun"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "checkbox_weekend_mon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "checkbox_weekend_tue"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "checkbox_weekend_wed"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "checkbox_weekend_thu"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "checkbox_weekend_fri"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/shared/PreferenceConstants$GeneralPreferences;->QUITE_TIME_KEYS:Ljava/util/List;

    .line 145
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "checkbox_quiet_time_nights"

    aput-object v1, v0, v3

    const-string v1, "checkbox_quiet_time_weekends"

    aput-object v1, v0, v4

    const-string v1, "long_quiet_time_weekdays_push_start"

    aput-object v1, v0, v5

    const-string v1, "long_quiet_time_weekdays_push_stop"

    aput-object v1, v0, v6

    const-string v1, "checkbox_weekend_sun"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "checkbox_weekend_mon"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "checkbox_weekend_tue"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "checkbox_weekend_wed"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "checkbox_weekend_thu"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "checkbox_weekend_fri"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "checkbox_weekend_sat"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "checkbox_quiet_time_roaming"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "checkbox_quiet_time_low_power"

    aput-object v2, v0, v1

    sput-object v0, Lcom/seven/Z7/shared/PreferenceConstants$GeneralPreferences;->PEAK_TIME_KEYS:[Ljava/lang/String;

    return-void
.end method

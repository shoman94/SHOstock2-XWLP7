.class interface abstract Lcom/android/contacts/quickcontact/QuickContactActivity$DataQuery;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "DataQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 725
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_chat_capability"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status_res_package"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "status_icon"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "status_label"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "status_ts"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "chat_capability"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "res_package"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity$DataQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

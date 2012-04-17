.class public Lcom/android/emailcommon/service/PolicySet;
.super Ljava/lang/Object;
.source "PolicySet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/service/PolicySet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAllowBluetoothMode:I

.field public mAllowBrowser:Z

.field public mAllowCamera:Z

.field public mAllowDesktopSync:Z

.field public mAllowHTMLEmail:Z

.field public mAllowInternetSharing:Z

.field public mAllowIrDA:Z

.field public mAllowPOPIMAPEmail:Z

.field public mAllowSMIMEEncryptionAlgorithmNegotiation:I

.field public mAllowSMIMESoftCerts:Z

.field public mAllowStorageCard:Z

.field public mAllowTextMessaging:Z

.field public mAllowWifi:Z

.field public mAttachmentsEnabled:Z

.field public mDeviceEncryptionEnabled:Z

.field public mMaxAttachmentSize:I

.field public mMaxCalendarAgeFilter:I

.field public mMaxEmailAgeFilter:I

.field public mMaxEmailBodyTruncationSize:I

.field public mMaxEmailHtmlBodyTruncationSize:I

.field public mMaxPasswordFails:I

.field public mMaxScreenLockTime:I

.field public mMinPasswordLength:I

.field public mPasswordComplexChars:I

.field public mPasswordExpirationDays:I

.field public mPasswordHistory:I

.field public mPasswordMode:I

.field public mPasswordRecoverable:Z

.field public mRequireEncryptedSMIMEMessages:Z

.field public mRequireEncryption:Z

.field public mRequireEncryptionSMIMEAlgorithm:I

.field public mRequireManualSyncWhenRoaming:Z

.field public mRequireRemoteWipe:Z

.field public mRequireSignedSMIMEAlgorithm:I

.field public mRequireSignedSMIMEMessages:Z

.field public mSimplePasswordEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1680
    new-instance v0, Lcom/android/emailcommon/service/PolicySet$1;

    invoke-direct {v0}, Lcom/android/emailcommon/service/PolicySet$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/service/PolicySet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZIIIZZZZZZ)V
    .locals 3
    .parameter "minPasswordLength"
    .parameter "passwordMode"
    .parameter "maxPasswordFails"
    .parameter "maxScreenLockTime"
    .parameter "requireRemoteWipe"
    .parameter "passwordRecoverable"
    .parameter "passwordExpirationDays"
    .parameter "passwordHistory"
    .parameter "attachmentsEnabled"
    .parameter "maxAttachmentSize"
    .parameter "allowStorageCard"
    .parameter "allowCamera"
    .parameter "allowWifi"
    .parameter "allowTextMessaging"
    .parameter "allowPOPIMAPEmail"
    .parameter "allowHTMLEmail"
    .parameter "allowBrowser"
    .parameter "allowInternetSharing"
    .parameter "requireManualSyncWhenRoaming"
    .parameter "allowBluetoothMode"
    .parameter "passwordComplexChars"
    .parameter "maxCalendarAgeFilter"
    .parameter "maxEmailAgeFilter"
    .parameter "maxEmailBodyTruncationSize"
    .parameter "maxEmailHtmlBodyTruncationSize"
    .parameter "requireSignedSMIMEMessages"
    .parameter "requireEncryptedSMIMEMessages"
    .parameter "requireSignedSMIMEAlgorithm"
    .parameter "requireEncryptionSMIMEAlgorithm"
    .parameter "allowSMIMEEncryptionAlgorithmNegotiation"
    .parameter "allowSMIMESoftCerts"
    .parameter "allowDesktopSync"
    .parameter "allowIrDA"
    .parameter "requireEncryption"
    .parameter "deviceEncryptionEnabled"
    .parameter "simplePasswordEnabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 613
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 621
    if-nez p2, :cond_1

    .line 623
    const/4 p3, 0x0

    .line 625
    const/4 p4, 0x0

    .line 627
    const/4 p1, 0x0

    .line 629
    const/16 p21, 0x0

    .line 631
    const/4 p8, 0x0

    .line 633
    const/4 p7, 0x0

    .line 708
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    .line 710
    const/16 v1, 0x40

    if-ne p2, v1, :cond_9

    const/4 v1, 0x1

    move/from16 v0, p21

    if-le v0, v1, :cond_9

    .line 712
    const/16 v1, 0x60

    iput v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    .line 718
    :goto_1
    iput p3, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    .line 720
    iput p4, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    .line 722
    iput-boolean p5, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    .line 724
    iput p7, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    .line 726
    iput p8, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    .line 728
    move/from16 v0, p21

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    .line 730
    move/from16 v0, p34

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    .line 732
    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    .line 756
    iput-boolean p6, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    .line 760
    iput-boolean p9, p0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    .line 762
    move/from16 v0, p36

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    .line 764
    iput p10, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    .line 772
    iput-boolean p11, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    .line 774
    iput-boolean p12, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    .line 776
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    .line 778
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    .line 780
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    .line 782
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    .line 784
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    .line 786
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    .line 788
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    .line 790
    move/from16 v0, p20

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    .line 794
    move/from16 v0, p22

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    .line 796
    move/from16 v0, p23

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    .line 798
    move/from16 v0, p24

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    .line 800
    move/from16 v0, p25

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    .line 802
    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    .line 804
    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    .line 806
    move/from16 v0, p28

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    .line 808
    move/from16 v0, p29

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    .line 810
    move/from16 v0, p30

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    .line 812
    move/from16 v0, p31

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    .line 814
    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    .line 816
    move/from16 v0, p33

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    .line 820
    return-void

    .line 638
    :cond_1
    const/16 v1, 0x20

    if-eq p2, v1, :cond_2

    const/16 v1, 0x40

    if-eq p2, v1, :cond_2

    const/16 v1, 0x60

    if-eq p2, v1, :cond_2

    .line 642
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    :cond_2
    const/16 v1, 0x20

    if-ne p2, v1, :cond_3

    .line 654
    const/16 p21, 0x0

    .line 662
    :cond_3
    const/16 v1, 0x1e

    if-le p1, v1, :cond_4

    .line 664
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 668
    :cond_4
    const/16 v1, 0x3ff

    if-le p7, v1, :cond_5

    .line 670
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password expiration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 674
    :cond_5
    const/16 v1, 0xff

    if-le p8, v1, :cond_6

    .line 676
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password history"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 680
    :cond_6
    const/16 v1, 0x1f

    move/from16 v0, p21

    if-le v0, v1, :cond_7

    .line 682
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "complex chars"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 690
    :cond_7
    const/16 v1, 0x1f

    if-le p3, v1, :cond_8

    .line 692
    const/16 p3, 0x1f

    .line 700
    :cond_8
    const/16 v1, 0x7ff

    if-le p4, v1, :cond_0

    .line 702
    const/16 p4, 0x7ff

    goto/16 :goto_0

    .line 716
    :cond_9
    iput p2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    goto/16 :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 13
    .parameter "context"
    .parameter "account"

    .prologue
    .line 834
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 842
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 844
    :cond_0
    const-string v0, "SecurityPolicy"

    const-string v1, "PolicySet(): account is null or context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_1
    :goto_0
    return-void

    .line 852
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 858
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v11, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 868
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 870
    :cond_3
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 872
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 874
    .local v7, name:Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 876
    .local v8, type:Ljava/lang/String;
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 880
    .local v10, value:Ljava/lang/String;
    const-string v0, "Integer"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 882
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 884
    .local v9, val:Ljava/lang/Integer;
    const-string v0, "PasswordMode"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 886
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    goto :goto_1

    .line 888
    :cond_4
    const-string v0, "MaxDevicePasswordFailedAttempts"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 890
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    goto :goto_1

    .line 892
    :cond_5
    const-string v0, "MinDevicePasswordLength"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 894
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    goto :goto_1

    .line 896
    :cond_6
    const-string v0, "MaxInactivityTime"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 898
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    goto :goto_1

    .line 900
    :cond_7
    const-string v0, "MaxAttachmentSize"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 902
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    goto :goto_1

    .line 904
    :cond_8
    const-string v0, "DevicePasswordExpiration"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 906
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    goto/16 :goto_1

    .line 908
    :cond_9
    const-string v0, "DevicePasswordHistory"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 910
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    goto/16 :goto_1

    .line 918
    :cond_a
    const-string v0, "AllowBluetoothMode"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 920
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    goto/16 :goto_1

    .line 922
    :cond_b
    const-string v0, "MinPasswordComplexCharacters"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 924
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    goto/16 :goto_1

    .line 926
    :cond_c
    const-string v0, "MaxCalendarAgeFilter"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 928
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    goto/16 :goto_1

    .line 930
    :cond_d
    const-string v0, "MaxEmailAgeFilter"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 932
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    goto/16 :goto_1

    .line 934
    :cond_e
    const-string v0, "MaxEmailBodyTruncationSize"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 936
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    goto/16 :goto_1

    .line 938
    :cond_f
    const-string v0, "MaxEmailHtmlBodyTruncationSize"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 940
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    goto/16 :goto_1

    .line 946
    :cond_10
    const-string v0, "RequireSignedSMIMEAlgorithm"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 948
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    goto/16 :goto_1

    .line 950
    :cond_11
    const-string v0, "RequireEncryptionSMIMEAlgorithm"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 952
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    goto/16 :goto_1

    .line 954
    :cond_12
    const-string v0, "AllowSMIMEEncryptionAlgorithmNegotiation"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 956
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    goto/16 :goto_1

    .line 964
    .end local v9           #val:Ljava/lang/Integer;
    :cond_13
    const-string v0, "Boolean"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 966
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 968
    .local v9, val:Ljava/lang/Boolean;
    const-string v0, "PasswordRecoveryEnabled"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 970
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    goto/16 :goto_1

    .line 972
    :cond_14
    const-string v0, "RequireDeviceEncryption"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 974
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    goto/16 :goto_1

    .line 976
    :cond_15
    const-string v0, "AttachmentsEnabled"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 978
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    goto/16 :goto_1

    .line 980
    :cond_16
    const-string v0, "RemoteWipe"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 982
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    goto/16 :goto_1

    .line 984
    :cond_17
    const-string v0, "AllowSimpleDevicePassword"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 986
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    goto/16 :goto_1

    .line 992
    :cond_18
    const-string v0, "AllowStorageCard"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 994
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    goto/16 :goto_1

    .line 996
    :cond_19
    const-string v0, "AllowCamera"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 998
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    goto/16 :goto_1

    .line 1000
    :cond_1a
    const-string v0, "AllowWifi"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1002
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    goto/16 :goto_1

    .line 1004
    :cond_1b
    const-string v0, "AllowTextMessaging"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1006
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    goto/16 :goto_1

    .line 1008
    :cond_1c
    const-string v0, "AllowPOPIMAPEmail"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1010
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    goto/16 :goto_1

    .line 1012
    :cond_1d
    const-string v0, "AllowHTMLEmail"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1014
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    goto/16 :goto_1

    .line 1016
    :cond_1e
    const-string v0, "AllowBrowser"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1018
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    goto/16 :goto_1

    .line 1020
    :cond_1f
    const-string v0, "AllowInternetSharing"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1022
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    goto/16 :goto_1

    .line 1024
    :cond_20
    const-string v0, "RequireManualSyncWhenRoaming"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1026
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    goto/16 :goto_1

    .line 1028
    :cond_21
    const-string v0, "RequireSignedSMIMEMessages"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1030
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    goto/16 :goto_1

    .line 1032
    :cond_22
    const-string v0, "RequireEncryptedSMIMEMessages"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1034
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    goto/16 :goto_1

    .line 1036
    :cond_23
    const-string v0, "AllowSMIMESoftCerts"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1038
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    goto/16 :goto_1

    .line 1040
    :cond_24
    const-string v0, "AllowDesktopSync"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1042
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    goto/16 :goto_1

    .line 1044
    :cond_25
    const-string v0, "AllowIrDA"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1046
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    goto/16 :goto_1

    .line 1058
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #type:Ljava/lang/String;
    .end local v9           #val:Ljava/lang/Boolean;
    .end local v10           #value:Ljava/lang/String;
    :cond_26
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1798
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1800
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    .line 1802
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    .line 1804
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    .line 1806
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    .line 1808
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    .line 1810
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    .line 1812
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    .line 1814
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    .line 1816
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    .line 1818
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    .line 1820
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    .line 1822
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    .line 1828
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    .line 1830
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    .line 1832
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    .line 1834
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    .line 1836
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    .line 1838
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    .line 1840
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    .line 1842
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    .line 1844
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    .line 1846
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    .line 1848
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    .line 1850
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    .line 1852
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    .line 1858
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    .line 1860
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_b

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    .line 1862
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_c

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    .line 1864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_d

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    .line 1866
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_e

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    .line 1868
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_f

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    .line 1870
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_10

    move v0, v1

    :goto_10
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    .line 1872
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_11

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    .line 1874
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_12

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    .line 1876
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_13

    :goto_13
    iput-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    .line 1878
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    .line 1880
    return-void

    :cond_0
    move v0, v2

    .line 1808
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 1816
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 1818
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 1820
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 1822
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 1828
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 1836
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 1842
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 1844
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 1846
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 1858
    goto :goto_a

    :cond_b
    move v0, v2

    .line 1860
    goto :goto_b

    :cond_c
    move v0, v2

    .line 1862
    goto :goto_c

    :cond_d
    move v0, v2

    .line 1864
    goto :goto_d

    :cond_e
    move v0, v2

    .line 1866
    goto :goto_e

    :cond_f
    move v0, v2

    .line 1868
    goto :goto_f

    :cond_10
    move v0, v2

    .line 1870
    goto :goto_10

    :cond_11
    move v0, v2

    .line 1872
    goto :goto_11

    :cond_12
    move v0, v2

    .line 1874
    goto :goto_12

    :cond_13
    move v1, v2

    .line 1876
    goto :goto_13
.end method

.method private populateHash(Ljava/util/HashMap;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x7

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 1544
    const-string v3, "PasswordMode"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    iget v3, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    if-eqz v3, :cond_0

    .line 1550
    const-string v3, "PasswordRecoveryEnabled"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    const-string v3, "MaxDevicePasswordFailedAttempts"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    const-string v3, "DevicePasswordExpiration"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    const-string v3, "DevicePasswordHistory"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    const-string v3, "MinPasswordComplexCharacters"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    const-string v3, "MinDevicePasswordLength"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    const-string v3, "RequireDeviceEncryption"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    :cond_0
    const-string v3, "MaxAttachmentSize"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    const-string v3, "AttachmentsEnabled"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    const-string v3, "AllowSimpleDevicePassword"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    const-string v3, "DeviceEncryptionEnabled"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    .line 1584
    .local v0, inactivityTime:I
    const-string v3, "MaxInactivityTime"

    const/16 v4, 0x270f

    if-lt v0, v4, :cond_1

    move v0, v1

    .end local v0           #inactivityTime:I
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    const-string v3, "RemoteWipe"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    const-string v3, "AllowStorageCard"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    const-string v3, "AllowCamera"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    const-string v3, "AllowWifi"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    const-string v3, "AllowTextMessaging"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    const-string v3, "AllowPOPIMAPEmail"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    const-string v3, "AllowHTMLEmail"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    const-string v3, "AllowBrowser"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    const-string v3, "AllowInternetSharing"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    const-string v3, "RequireManualSyncWhenRoaming"

    iget-boolean v4, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    const-string v3, "AllowBluetoothMode"

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    if-le v4, v2, :cond_5

    :cond_2
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    const-string v3, "MaxCalendarAgeFilter"

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    if-le v2, v5, :cond_6

    :cond_3
    move v2, v1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    const-string v3, "MaxEmailAgeFilter"

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    if-le v2, v5, :cond_7

    :cond_4
    move v2, v1

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    const-string v3, "MaxEmailBodyTruncationSize"

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    if-gez v2, :cond_8

    move v2, v1

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    const-string v2, "MaxEmailHtmlBodyTruncationSize"

    iget v3, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    if-gez v3, :cond_9

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    const-string v1, "RequireSignedSMIMEMessages"

    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    const-string v1, "RequireEncryptedSMIMEMessages"

    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    const-string v1, "RequireSignedSMIMEAlgorithm"

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    const-string v1, "RequireEncryptionSMIMEAlgorithm"

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    const-string v1, "AllowSMIMEEncryptionAlgorithmNegotiation"

    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    const-string v1, "AllowSMIMESoftCerts"

    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    const-string v1, "AllowDesktopSync"

    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    const-string v1, "AllowIrDA"

    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    return-void

    .line 1608
    :cond_5
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    goto/16 :goto_0

    .line 1616
    :cond_6
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    goto/16 :goto_1

    .line 1622
    :cond_7
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    goto/16 :goto_2

    .line 1626
    :cond_8
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    goto :goto_3

    .line 1630
    :cond_9
    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    goto :goto_4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1668
    const/4 v0, 0x0

    return v0
.end method

.method public getDPManagerPasswordExpirationTimeout()J
    .locals 6

    .prologue
    .line 1152
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    int-to-long v2, v2

    const-wide/32 v4, 0x5265c00

    mul-long v0, v2, v4

    .line 1166
    .local v0, result:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1168
    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    .line 1172
    :cond_0
    return-wide v0
.end method

.method public getDPManagerPasswordQuality()I
    .locals 1

    .prologue
    .line 1108
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    sparse-switch v0, :sswitch_data_0

    .line 1134
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1112
    :sswitch_0
    const/high16 v0, 0x2

    goto :goto_0

    .line 1116
    :sswitch_1
    const/high16 v0, 0x5

    goto :goto_0

    .line 1130
    :sswitch_2
    const/high16 v0, 0x6

    goto :goto_0

    .line 1108
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x40 -> :sswitch_1
        0x60 -> :sswitch_2
    .end sparse-switch
.end method

.method public getMaxPasswordFailsForTest()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    return v0
.end method

.method public getMaxScreenLockTimeForTest()I
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    return v0
.end method

.method public getMinPasswordLengthForTest()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    return v0
.end method

.method public getPasswordModeForTest()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    return v0
.end method

.method public getSecurityCode()J
    .locals 5

    .prologue
    .line 1898
    const-wide/16 v0, 0x0

    .line 1900
    .local v0, flags:J
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    int-to-long v2, v2

    const/4 v4, 0x0

    shl-long v0, v2, v4

    .line 1902
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 1904
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    int-to-long v2, v2

    const/16 v4, 0x9

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 1906
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    int-to-long v2, v2

    const/16 v4, 0xe

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 1908
    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    if-eqz v2, :cond_0

    .line 1910
    const-wide/32 v2, 0x2000000

    or-long/2addr v0, v2

    .line 1912
    :cond_0
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    int-to-long v2, v2

    const/16 v4, 0x24

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 1914
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    int-to-long v2, v2

    const/16 v4, 0x1a

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 1916
    iget v2, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    int-to-long v2, v2

    const/16 v4, 0x2c

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 1918
    iget-boolean v2, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    if-eqz v2, :cond_1

    .line 1920
    const-wide/high16 v2, 0x2

    or-long/2addr v0, v2

    .line 1922
    :cond_1
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1888
    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicySet;->getSecurityCode()J

    move-result-wide v0

    .line 1890
    .local v0, code:J
    long-to-int v2, v0

    return v2
.end method

.method public isRequireEncryptionForTest()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    return v0
.end method

.method public isRequireRemoteWipeForTest()Z
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    return v0
.end method

.method public removePolicyRules(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 1520
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "account_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1528
    return-void
.end method

.method public storePolicyRules(Landroid/content/Context;J)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 1458
    const-class v2, Lcom/android/emailcommon/service/PolicySet;

    monitor-enter v2

    .line 1460
    :try_start_0
    const-string v0, "SecurityPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storePolicyRules() - accountId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1466
    invoke-direct {p0, v0}, Lcom/android/emailcommon/service/PolicySet;->populateHash(Ljava/util/HashMap;)V

    .line 1470
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1474
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/emailcommon/service/PolicySet;->removePolicyRules(Landroid/content/Context;J)V

    .line 1476
    const-string v1, "SecurityPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " storePolicyRules: removed policies for accountId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1480
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1482
    new-instance v5, Lcom/android/emailcommon/provider/EmailContent$Policies;

    invoke-direct {v5}, Lcom/android/emailcommon/provider/EmailContent$Policies;-><init>()V

    .line 1484
    iput-wide p2, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mAccountId:J

    .line 1486
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 1488
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 1490
    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v1, :cond_1

    .line 1492
    const-string v1, "SecurityPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "policy Name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", policyValue:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 1500
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Policies;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 1506
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1508
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ pw-len-min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pw-mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pw-fails-max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenlock-max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remote-wipe-req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pw-expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pw-history="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pw-complex-chars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recoveryEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", require-encryption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", require-SD-encryption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attachmentsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxAttachmentsSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowHTML="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requireManualSyncWhenRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxCalendarAgeFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxEmailAgeFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxEmailBodyTruncationSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxEmailHtmlBodyTruncationSize= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requireSignMessage= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requireEncryptMessage= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowEncryptionNegotiation= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signAlgorithm= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encryptAlgorithm= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowCamera= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowSDcard= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowWiFi= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowSMS= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowPopImap= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowIrDA= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowBrowser= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowInternetSharing= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowBT= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowKIES= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowSMIMEsoftCert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeAccount(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;ZLandroid/content/Context;)Z
    .locals 14
    .parameter "account"
    .parameter "syncKey"
    .parameter "update"
    .parameter "context"

    .prologue
    .line 1208
    new-instance v7, Lcom/android/emailcommon/service/PolicySet;

    move-object/from16 v0, p4

    invoke-direct {v7, v0, p1}, Lcom/android/emailcommon/service/PolicySet;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1210
    .local v7, oldPolicy:Lcom/android/emailcommon/service/PolicySet;
    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const/4 v4, 0x1

    .line 1220
    .local v4, dirty:Z
    :goto_0
    move-object/from16 v0, p2

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1222
    if-eqz p3, :cond_8

    .line 1232
    const/4 v1, 0x0

    .line 1234
    .local v1, changedValues:Z
    sget v11, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-static {v11}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(I)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->toEas12Value()I

    move-result v2

    .line 1250
    .local v2, currentSize:I
    iget v8, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    .line 1252
    .local v8, plainTextSize:I
    const-string v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "plainTextSize = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iget v11, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    div-int/lit16 v5, v11, 0x400

    .line 1266
    .local v5, htmlSize:I
    const-string v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "htmlSize = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-boolean v6, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    .line 1270
    .local v6, isHtmlAllowed:Z
    const-string v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isHtmlAllowed = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    if-eqz v6, :cond_a

    if-lez v5, :cond_a

    .line 1274
    move v9, v5

    .line 1290
    .local v9, restrictedSize:I
    :goto_1
    if-lez v9, :cond_b

    .line 1292
    mul-int/lit16 v9, v9, 0x400

    .line 1300
    :goto_2
    if-ge v9, v2, :cond_1

    .line 1302
    const-string v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exchange IT Policy has restricted SyncSize, CurrentSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Bytes, restrictedSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Bytes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    sget v11, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    if-lez v11, :cond_0

    .line 1308
    invoke-static {v9}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parseToByte(I)B

    move-result v11

    sput v11, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    .line 1312
    :cond_0
    const/4 v1, 0x1

    .line 1318
    :cond_1
    const/4 v10, 0x6

    .line 1320
    .local v10, restrictedWindow:I
    iget v10, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    .line 1322
    if-gtz v10, :cond_2

    .line 1324
    const/4 v10, 0x6

    .line 1328
    :cond_2
    iget v11, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    if-ge v10, v11, :cond_3

    .line 1330
    const-string v11, "AccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exchange IT Policy has restricted SyncLookback, current:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", restricted="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iput v10, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    .line 1336
    const/4 v1, 0x1

    .line 1344
    :cond_3
    iget v10, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    .line 1346
    if-lez v10, :cond_5

    iget v11, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    if-eqz v11, :cond_4

    iget v11, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    if-ge v10, v11, :cond_5

    .line 1350
    :cond_4
    const-string v11, "AccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exchange IT Policy has restricted CalendarSyncLookback, current:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", restricted="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    iput v10, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 1360
    const/4 v1, 0x1

    .line 1368
    :cond_5
    iget-boolean v11, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    if-eqz v11, :cond_6

    .line 1370
    iget v11, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    const v12, 0x8000

    or-int/2addr v11, v12

    iput v11, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 1378
    :cond_6
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSaved()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1380
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1386
    .local v3, cv:Landroid/content/ContentValues;
    const-string v11, "securitySyncKey"

    iget-object v12, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    if-eqz v1, :cond_7

    .line 1400
    const-string v11, "isDefault"

    iget-boolean v12, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1402
    const-string v11, "emailsize"

    sget v12, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1404
    const-string v11, "syncLookback"

    iget v12, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1408
    const-string v11, "calendarSyncLookback"

    iget v12, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1416
    :cond_7
    move-object/from16 v0, p4

    invoke-virtual {p1, v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1432
    .end local v3           #cv:Landroid/content/ContentValues;
    :goto_3
    iget-wide v11, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v11, v12}, Lcom/android/emailcommon/service/PolicySet;->storePolicyRules(Landroid/content/Context;J)V

    .line 1438
    .end local v1           #changedValues:Z
    .end local v2           #currentSize:I
    .end local v5           #htmlSize:I
    .end local v6           #isHtmlAllowed:Z
    .end local v8           #plainTextSize:I
    .end local v9           #restrictedSize:I
    .end local v10           #restrictedWindow:I
    :cond_8
    return v4

    .line 1210
    .end local v4           #dirty:Z
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1282
    .restart local v1       #changedValues:Z
    .restart local v2       #currentSize:I
    .restart local v4       #dirty:Z
    .restart local v5       #htmlSize:I
    .restart local v6       #isHtmlAllowed:Z
    .restart local v8       #plainTextSize:I
    :cond_a
    move v9, v8

    .restart local v9       #restrictedSize:I
    goto/16 :goto_1

    .line 1298
    :cond_b
    const v9, 0x7fffffff

    goto/16 :goto_2

    .line 1420
    .restart local v10       #restrictedWindow:I
    :cond_c
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1708
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1710
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1712
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1714
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1716
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1718
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1720
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1722
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1724
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1726
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1728
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1730
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1736
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1738
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1740
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1742
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1744
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1746
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1748
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1750
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1752
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1754
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1756
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1758
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1760
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1766
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1768
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1770
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1772
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1774
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1776
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1778
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1780
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1782
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    if-eqz v0, :cond_12

    move v0, v1

    :goto_12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1784
    iget-boolean v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    if-eqz v0, :cond_13

    :goto_13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1786
    iget v0, p0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1788
    return-void

    :cond_0
    move v0, v2

    .line 1716
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 1724
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 1726
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 1728
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 1730
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 1736
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 1744
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 1750
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 1752
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 1754
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 1766
    goto :goto_a

    :cond_b
    move v0, v2

    .line 1768
    goto :goto_b

    :cond_c
    move v0, v2

    .line 1770
    goto :goto_c

    :cond_d
    move v0, v2

    .line 1772
    goto :goto_d

    :cond_e
    move v0, v2

    .line 1774
    goto :goto_e

    :cond_f
    move v0, v2

    .line 1776
    goto :goto_f

    :cond_10
    move v0, v2

    .line 1778
    goto :goto_10

    :cond_11
    move v0, v2

    .line 1780
    goto :goto_11

    :cond_12
    move v0, v2

    .line 1782
    goto :goto_12

    :cond_13
    move v1, v2

    .line 1784
    goto :goto_13
.end method

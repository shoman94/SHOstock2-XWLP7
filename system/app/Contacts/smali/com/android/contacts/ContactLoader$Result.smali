.class public final Lcom/android/contacts/ContactLoader$Result;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactLoader$Result$Status;
    }
.end annotation


# instance fields
.field private final mAltDisplayName:Ljava/lang/String;

.field private mBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomRingtone:Ljava/lang/String;

.field private mCustomRingtoneName:Ljava/lang/String;

.field private mDirectoryAccountName:Ljava/lang/String;

.field private mDirectoryAccountType:Ljava/lang/String;

.field private mDirectoryDisplayName:Ljava/lang/String;

.field private mDirectoryExportSupport:I

.field private final mDirectoryId:J

.field private mDirectoryType:Ljava/lang/String;

.field private final mDisplayName:Ljava/lang/String;

.field private final mDisplayNameSource:I

.field private final mEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private final mException:Ljava/lang/Exception;

.field private mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:J

.field private final mInvitableAccountTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsSim:Z

.field private final mIsUserProfile:Z

.field private mLoadingPhoto:Z

.field private final mLookupKey:Ljava/lang/String;

.field private final mLookupUri:Landroid/net/Uri;

.field private final mNameRawContactId:J

.field private final mPhoneticName:Ljava/lang/String;

.field private mPhotoBinaryData:[B

.field private final mPhotoId:J

.field private final mPhotoUri:Ljava/lang/String;

.field private final mPresence:Ljava/lang/Integer;

.field private final mRequestedUri:Landroid/net/Uri;

.field private final mSendToVoicemail:Z

.field private final mStarred:Z

.field private final mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

.field private final mStatuses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/util/DataStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mStreamItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZZLjava/lang/String;)V
    .locals 2
    .parameter "requestedUri"
    .parameter "uri"
    .parameter "lookupUri"
    .parameter "directoryId"
    .parameter "lookupKey"
    .parameter "id"
    .parameter "nameRawContactId"
    .parameter "displayNameSource"
    .parameter "photoId"
    .parameter "photoUri"
    .parameter "displayName"
    .parameter "altDisplayName"
    .parameter "phoneticName"
    .parameter "starred"
    .parameter "presence"
    .parameter "sendToVoicemail"
    .parameter "customRingtone"
    .parameter "isUserProfile"
    .parameter "isSim"
    .parameter "customRingtoneName"

    .prologue
    .line 198
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 199
    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->LOADED:Lcom/android/contacts/ContactLoader$Result$Status;

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    .line 200
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    .line 201
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    .line 202
    iput-object p3, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    .line 203
    iput-object p2, p0, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    .line 204
    iput-wide p4, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    .line 205
    iput-object p6, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    .line 206
    iput-wide p7, p0, Lcom/android/contacts/ContactLoader$Result;->mId:J

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    .line 209
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Ljava/util/HashMap;

    .line 210
    iput-wide p9, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    .line 211
    iput p11, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    .line 212
    iput-wide p12, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    .line 213
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    .line 214
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    .line 215
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    .line 216
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    .line 217
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    .line 218
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    .line 219
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    .line 220
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    .line 221
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    .line 222
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtoneName:Ljava/lang/String;

    .line 223
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    .line 224
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsSim:Z

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    .line 226
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZZLjava/lang/String;Lcom/android/contacts/ContactLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"
    .parameter "x11"
    .parameter "x12"
    .parameter "x13"
    .parameter "x14"
    .parameter "x15"
    .parameter "x16"
    .parameter "x17"
    .parameter "x18"
    .parameter "x19"
    .parameter "x20"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p24}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result$Status;Ljava/lang/Exception;)V
    .locals 5
    .parameter "requestedUri"
    .parameter "status"
    .parameter "exception"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 151
    sget-object v0, Lcom/android/contacts/ContactLoader$Result$Status;->ERROR:Lcom/android/contacts/ContactLoader$Result$Status;

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ERROR result must have exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iput-object p2, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    .line 155
    iput-object p3, p0, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    .line 156
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    .line 157
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    .line 158
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    .line 159
    iput-wide v3, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    .line 160
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    .line 161
    iput-wide v3, p0, Lcom/android/contacts/ContactLoader$Result;->mId:J

    .line 162
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    .line 164
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Ljava/util/HashMap;

    .line 165
    iput-wide v3, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    .line 166
    iput v2, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    .line 167
    iput-wide v3, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    .line 168
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    .line 169
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    .line 170
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    .line 171
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    .line 172
    iput-boolean v2, p0, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    .line 173
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    .line 174
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    .line 175
    iput-boolean v2, p0, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    .line 176
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    .line 177
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtoneName:Ljava/lang/String;

    .line 178
    iput-boolean v2, p0, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    .line 179
    iput-boolean v2, p0, Lcom/android/contacts/ContactLoader$Result;->mIsSim:Z

    .line 180
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    .line 181
    return-void
.end method

.method private constructor <init>(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 2
    .parameter "from"

    .prologue
    .line 228
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    .line 230
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    .line 231
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    .line 232
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    .line 233
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    .line 234
    iget-wide v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    .line 235
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    .line 236
    iget-wide v0, p1, Lcom/android/contacts/ContactLoader$Result;->mId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mId:J

    .line 237
    iget-wide v0, p1, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    .line 238
    iget v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    iput v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    .line 239
    iget-wide v0, p1, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    .line 240
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    .line 241
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    .line 242
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    .line 243
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    .line 244
    iget-boolean v0, p1, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    .line 245
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    .line 246
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    .line 247
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    .line 248
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Ljava/util/HashMap;

    .line 249
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    .line 251
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    .line 252
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    .line 253
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    .line 254
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    .line 255
    iget v0, p1, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    iput v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    .line 257
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    .line 259
    iget-boolean v0, p1, Lcom/android/contacts/ContactLoader$Result;->mLoadingPhoto:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLoadingPhoto:Z

    .line 260
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    .line 261
    iget-boolean v0, p1, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    .line 262
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    .line 263
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtoneName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtoneName:Ljava/lang/String;

    .line 264
    iget-boolean v0, p1, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    .line 265
    iget-boolean v0, p1, Lcom/android/contacts/ContactLoader$Result;->mIsSim:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsSim:Z

    .line 266
    iget-object v0, p1, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    .line 267
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ContactLoader$Result;Lcom/android/contacts/ContactLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;-><init>(Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/ContactLoader$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p5}, Lcom/android/contacts/ContactLoader$Result;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/ContactLoader$Result;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->addBlackListData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/ContactLoader$Result;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/ContactLoader$Result;Lcom/android/contacts/GroupMetaData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->addGroupMetaData(Lcom/android/contacts/GroupMetaData;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/ContactLoader$Result;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/ContactLoader$Result;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->setLoadingPhoto(Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-static {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-static {p0}, Lcom/android/contacts/ContactLoader$Result;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/ContactLoader$Result;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->setPhotoBinaryData([B)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/ContactLoader$Result;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addBlackListData(Ljava/lang/String;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    return-void
.end method

.method private addGroupMetaData(Lcom/android/contacts/GroupMetaData;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    return-void
.end method

.method private static forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/ContactLoader$Result;
    .locals 2
    .parameter "requestedUri"
    .parameter "exception"

    .prologue
    .line 184
    new-instance v0, Lcom/android/contacts/ContactLoader$Result;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->ERROR:Lcom/android/contacts/ContactLoader$Result$Status;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method private static forNotFound(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    .locals 3
    .parameter "requestedUri"

    .prologue
    .line 188
    new-instance v0, Lcom/android/contacts/ContactLoader$Result;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->NOT_FOUND:Lcom/android/contacts/ContactLoader$Result$Status;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method private setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "displayName"
    .parameter "directoryType"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "exportSupport"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    .line 275
    iput-object p2, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    .line 276
    iput-object p3, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    .line 277
    iput-object p4, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    .line 278
    iput p5, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    .line 279
    return-void
.end method

.method private setLoadingPhoto(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/android/contacts/ContactLoader$Result;->mLoadingPhoto:Z

    .line 283
    return-void
.end method

.method private setPhotoBinaryData([B)V
    .locals 0
    .parameter "photoBinaryData"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    .line 287
    return-void
.end method


# virtual methods
.method public getAltDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getBlackList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v7, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 449
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Cannot extract content values from an aggregated contact"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 453
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 454
    .local v0, entity:Landroid/content/Entity;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    .line 456
    .local v6, subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    if-eqz v6, :cond_2

    .line 457
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 458
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 459
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 460
    .local v2, pair:Landroid/content/Entity$NamedContentValues;
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, v2, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 461
    iget-object v7, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    .end local v1           #i:I
    .end local v2           #pair:Landroid/content/Entity$NamedContentValues;
    .end local v5           #size:I
    :cond_2
    iget-wide v7, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    if-eqz v7, :cond_3

    .line 469
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 470
    .local v3, photo:Landroid/content/ContentValues;
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v7, "data15"

    iget-object v8, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 472
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    .end local v3           #photo:Landroid/content/ContentValues;
    :cond_3
    return-object v4
.end method

.method public getCustomRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomRingtoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtoneName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryExportSupport()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    return v0
.end method

.method public getDirectoryId()J
    .locals 2

    .prologue
    .line 411
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    return-wide v0
.end method

.method public getDirectoryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNameSource()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    return v0
.end method

.method public getEntities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getGroupMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 322
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mId:J

    return-wide v0
.end method

.method public getInvitableAccountTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getNameRawContactId()J
    .locals 2

    .prologue
    .line 359
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    return-wide v0
.end method

.method public getPhoneticName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoBinaryData()[B
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 367
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    return-wide v0
.end method

.method public getPhotoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestedUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getStarred()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    return v0
.end method

.method public getStatuses()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/util/DataStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Ljava/util/HashMap;

    return-object v0
.end method

.method public getStreamItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isDirectoryEntry()Z
    .locals 4

    .prologue
    .line 415
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->ERROR:Lcom/android/contacts/ContactLoader$Result$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->LOADED:Lcom/android/contacts/ContactLoader$Result$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingPhoto()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLoadingPhoto:Z

    return v0
.end method

.method public isNotFound()Z
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->NOT_FOUND:Lcom/android/contacts/ContactLoader$Result$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendToVoicemail()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    return v0
.end method

.method public isSim()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsSim:Z

    return v0
.end method

.method public isUserProfile()Z
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    return v0
.end method

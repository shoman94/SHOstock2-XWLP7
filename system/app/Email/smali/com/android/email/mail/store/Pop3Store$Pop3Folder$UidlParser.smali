.class Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
.super Ljava/lang/Object;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/Pop3Store$Pop3Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UidlParser"
.end annotation


# instance fields
.field public mEndOfMessage:Z

.field public mErr:Z

.field public mMessageNumber:I

.field public mUniqueId:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/email/mail/store/Pop3Store$Pop3Folder;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V
    .locals 1
    .parameter

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->this$1:Lcom/android/email/mail/store/Pop3Store$Pop3Folder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mErr:Z

    .line 641
    return-void
.end method


# virtual methods
.method public parseMultiLine(Ljava/lang/String;)Z
    .locals 7
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 687
    iput-boolean v4, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mErr:Z

    .line 688
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 708
    :goto_0
    return v3

    .line 691
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 692
    .local v0, first:C
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_2

    .line 693
    iput-boolean v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    goto :goto_0

    .line 696
    :cond_2
    const-string v5, " +"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 697
    .local v2, uidParts:[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x2

    if-lt v5, v6, :cond_3

    .line 699
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mMessageNumber:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    aget-object v5, v2, v3

    iput-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    .line 704
    iput-boolean v4, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    goto :goto_0

    .line 700
    :catch_0
    move-exception v1

    .local v1, nfe:Ljava/lang/NumberFormatException;
    move v3, v4

    .line 701
    goto :goto_0

    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_3
    move v3, v4

    .line 708
    goto :goto_0
.end method

.method public parseSingleLine(Ljava/lang/String;)Z
    .locals 7
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 653
    iput-boolean v4, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mErr:Z

    .line 654
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 674
    :goto_0
    return v3

    .line 657
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 658
    .local v0, first:C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    .line 659
    const-string v5, " +"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 660
    .local v2, uidParts:[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x3

    if-lt v5, v6, :cond_3

    .line 662
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mMessageNumber:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    const/4 v4, 0x2

    aget-object v4, v2, v4

    iput-object v4, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    .line 667
    iput-boolean v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    goto :goto_0

    .line 663
    :catch_0
    move-exception v1

    .local v1, nfe:Ljava/lang/NumberFormatException;
    move v3, v4

    .line 664
    goto :goto_0

    .line 670
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    .end local v2           #uidParts:[Ljava/lang/String;
    :cond_2
    const/16 v5, 0x2d

    if-ne v0, v5, :cond_3

    .line 671
    iput-boolean v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mErr:Z

    goto :goto_0

    :cond_3
    move v3, v4

    .line 674
    goto :goto_0
.end method

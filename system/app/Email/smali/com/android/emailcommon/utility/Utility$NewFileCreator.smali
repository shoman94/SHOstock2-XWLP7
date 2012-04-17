.class interface abstract Lcom/android/emailcommon/utility/Utility$NewFileCreator;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "NewFileCreator"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/android/emailcommon/utility/Utility$NewFileCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 650
    new-instance v0, Lcom/android/emailcommon/utility/Utility$NewFileCreator$1;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$NewFileCreator$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility$NewFileCreator;->DEFAULT:Lcom/android/emailcommon/utility/Utility$NewFileCreator;

    return-void
.end method


# virtual methods
.method public abstract createNewFile(Ljava/io/File;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

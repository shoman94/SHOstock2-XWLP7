.class Lcom/android/email/activity/FindLocationActivity$LocationData;
.super Ljava/lang/Object;
.source "FindLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/FindLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocationData"
.end annotation


# instance fields
.field dataChar:Ljava/lang/CharSequence;

.field dataString:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/FindLocationActivity;


# direct methods
.method constructor <init>(Lcom/android/email/activity/FindLocationActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 677
    iput-object p1, p0, Lcom/android/email/activity/FindLocationActivity$LocationData;->this$0:Lcom/android/email/activity/FindLocationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 678
    iput-object v0, p0, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataChar:Ljava/lang/CharSequence;

    .line 680
    iput-object v0, p0, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataString:Ljava/lang/String;

    return-void
.end method

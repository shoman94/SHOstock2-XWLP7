.class Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;
.super Landroid/os/AsyncTask;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SelectMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateLocationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/maps/GeoPoint;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SelectMapActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/SelectMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/SelectMapActivity;Lcom/android/mms/ui/SelectMapActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 518
    check-cast p1, [Lcom/google/android/maps/GeoPoint;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;->doInBackground([Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 2
    .parameter "point"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    #calls: Lcom/android/mms/ui/SelectMapActivity;->updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/mms/ui/SelectMapActivity;->access$200(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 518
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 525
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #getter for: Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/SelectMapActivity;->access$500(Lcom/android/mms/ui/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #setter for: Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/mms/ui/SelectMapActivity;->access$402(Lcom/android/mms/ui/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 529
    :cond_0
    return-void
.end method

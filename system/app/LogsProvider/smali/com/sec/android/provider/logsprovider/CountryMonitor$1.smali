.class Lcom/sec/android/provider/logsprovider/CountryMonitor$1;
.super Ljava/lang/Object;
.source "CountryMonitor.java"

# interfaces
.implements Landroid/location/CountryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/provider/logsprovider/CountryMonitor;->getCountryIso()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/provider/logsprovider/CountryMonitor;


# direct methods
.method constructor <init>(Lcom/sec/android/provider/logsprovider/CountryMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/provider/logsprovider/CountryMonitor$1;->this$0:Lcom/sec/android/provider/logsprovider/CountryMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountryDetected(Landroid/location/Country;)V
    .locals 2
    .parameter "country"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/CountryMonitor$1;->this$0:Lcom/sec/android/provider/logsprovider/CountryMonitor;

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/sec/android/provider/logsprovider/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/provider/logsprovider/CountryMonitor;->access$002(Lcom/sec/android/provider/logsprovider/CountryMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    return-void
.end method

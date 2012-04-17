.class Lcom/android/contacts/list/ProviderStatusLoader$1;
.super Ljava/lang/Object;
.source "ProviderStatusLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ProviderStatusLoader;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ProviderStatusLoader;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ProviderStatusLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/contacts/list/ProviderStatusLoader$1;->this$0:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusLoader$1;->this$0:Lcom/android/contacts/list/ProviderStatusLoader;

    #getter for: Lcom/android/contacts/list/ProviderStatusLoader;->mListener:Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;
    invoke-static {v0}, Lcom/android/contacts/list/ProviderStatusLoader;->access$000(Lcom/android/contacts/list/ProviderStatusLoader;)Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusLoader$1;->this$0:Lcom/android/contacts/list/ProviderStatusLoader;

    const/4 v1, -0x1

    #setter for: Lcom/android/contacts/list/ProviderStatusLoader;->mProviderStatus:I
    invoke-static {v0, v1}, Lcom/android/contacts/list/ProviderStatusLoader;->access$102(Lcom/android/contacts/list/ProviderStatusLoader;I)I

    .line 113
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusLoader$1;->this$0:Lcom/android/contacts/list/ProviderStatusLoader;

    #getter for: Lcom/android/contacts/list/ProviderStatusLoader;->mListener:Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;
    invoke-static {v0}, Lcom/android/contacts/list/ProviderStatusLoader;->access$000(Lcom/android/contacts/list/ProviderStatusLoader;)Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;->onProviderStatusChange()V

    .line 115
    :cond_0
    return-void
.end method

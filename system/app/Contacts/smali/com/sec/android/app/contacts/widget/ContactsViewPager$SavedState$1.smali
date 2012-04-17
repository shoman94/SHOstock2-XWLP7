.class final Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "ContactsViewPager.java"

# interfaces
.implements Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks",
        "<",
        "Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 687
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;
    .locals 1
    .parameter "in"
    .parameter "loader"

    .prologue
    .line 690
    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 687
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 694
    new-array v0, p1, [Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 687
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState$1;->newArray(I)[Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

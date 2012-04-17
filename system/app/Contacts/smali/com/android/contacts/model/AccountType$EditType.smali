.class public Lcom/android/contacts/model/AccountType$EditType;
.super Ljava/lang/Object;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditType"
.end annotation


# instance fields
.field public customColumn:Ljava/lang/String;

.field public labelRes:I

.field public rawValue:I

.field public secondary:Z

.field public specificMax:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "rawValue"
    .parameter "labelRes"

    .prologue
    .line 296
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput p1, p0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    .line 298
    iput p2, p0, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    .line 299
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    .line 300
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 319
    instance-of v2, p1, Lcom/android/contacts/model/AccountType$EditType;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 320
    check-cast v0, Lcom/android/contacts/model/AccountType$EditType;

    .line 321
    .local v0, other:Lcom/android/contacts/model/AccountType$EditType;
    iget v2, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    iget v3, p0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 323
    .end local v0           #other:Lcom/android/contacts/model/AccountType$EditType;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    return v0
.end method

.method public setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;
    .locals 0
    .parameter "customColumn"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    .line 314
    return-object p0
.end method

.method public setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;
    .locals 0
    .parameter "secondary"

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EditType;->secondary:Z

    .line 304
    return-object p0
.end method

.method public setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 0
    .parameter "specificMax"

    .prologue
    .line 308
    iput p1, p0, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    .line 309
    return-object p0
.end method

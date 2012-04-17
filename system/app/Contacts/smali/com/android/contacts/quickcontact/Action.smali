.class public interface abstract Lcom/android/contacts/quickcontact/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Lcom/android/contacts/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/contacts/Collapser$Collapsible",
        "<",
        "Lcom/android/contacts/quickcontact/Action;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAlternateIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getAlternateIntent()Landroid/content/Intent;
.end method

.method public abstract getBody()Ljava/lang/CharSequence;
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

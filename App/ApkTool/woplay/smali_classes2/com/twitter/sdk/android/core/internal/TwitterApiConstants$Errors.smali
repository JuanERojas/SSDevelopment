.class public Lcom/twitter/sdk/android/core/internal/TwitterApiConstants$Errors;
.super Lcom/twitter/sdk/android/core/internal/TwitterApiConstants$Base;
.source "TwitterApiConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/TwitterApiConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Errors"
.end annotation


# static fields
.field public static final ALREADY_FAVORITED:I = 0x8b

.field public static final ALREADY_UNFAVORITED:I = 0x90

.field public static final APP_AUTH_ERROR_CODE:I = 0x59

.field public static final ERRORS:Ljava/lang/String; = "errors"

.field public static final GUEST_AUTH_ERROR_CODE:I = 0xef

.field public static final LEGACY_ERROR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/TwitterApiConstants$Base;-><init>()V

    return-void
.end method

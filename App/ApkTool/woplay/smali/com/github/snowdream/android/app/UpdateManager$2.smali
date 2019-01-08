.class synthetic Lcom/github/snowdream/android/app/UpdateManager$2;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/snowdream/android/app/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$github$snowdream$android$app$UpdateFormat:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 162
    invoke-static {}, Lcom/github/snowdream/android/app/UpdateFormat;->values()[Lcom/github/snowdream/android/app/UpdateFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/github/snowdream/android/app/UpdateManager$2;->$SwitchMap$com$github$snowdream$android$app$UpdateFormat:[I

    :try_start_0
    sget-object v0, Lcom/github/snowdream/android/app/UpdateManager$2;->$SwitchMap$com$github$snowdream$android$app$UpdateFormat:[I

    sget-object v1, Lcom/github/snowdream/android/app/UpdateFormat;->XML:Lcom/github/snowdream/android/app/UpdateFormat;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/UpdateFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/github/snowdream/android/app/UpdateManager$2;->$SwitchMap$com$github$snowdream$android$app$UpdateFormat:[I

    sget-object v1, Lcom/github/snowdream/android/app/UpdateFormat;->JSON:Lcom/github/snowdream/android/app/UpdateFormat;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/UpdateFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

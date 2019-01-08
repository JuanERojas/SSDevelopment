.class public final enum Lcom/github/snowdream/android/app/UpdateFormat;
.super Ljava/lang/Enum;
.source "UpdateFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/snowdream/android/app/UpdateFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/snowdream/android/app/UpdateFormat;

.field public static final enum JSON:Lcom/github/snowdream/android/app/UpdateFormat;

.field public static final enum XML:Lcom/github/snowdream/android/app/UpdateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/github/snowdream/android/app/UpdateFormat;

    const-string v1, "XML"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/snowdream/android/app/UpdateFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/snowdream/android/app/UpdateFormat;->XML:Lcom/github/snowdream/android/app/UpdateFormat;

    .line 18
    new-instance v0, Lcom/github/snowdream/android/app/UpdateFormat;

    const-string v1, "JSON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/github/snowdream/android/app/UpdateFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/snowdream/android/app/UpdateFormat;->JSON:Lcom/github/snowdream/android/app/UpdateFormat;

    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [Lcom/github/snowdream/android/app/UpdateFormat;

    sget-object v1, Lcom/github/snowdream/android/app/UpdateFormat;->XML:Lcom/github/snowdream/android/app/UpdateFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/snowdream/android/app/UpdateFormat;->JSON:Lcom/github/snowdream/android/app/UpdateFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/github/snowdream/android/app/UpdateFormat;->$VALUES:[Lcom/github/snowdream/android/app/UpdateFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/snowdream/android/app/UpdateFormat;
    .locals 1

    .line 9
    const-class v0, Lcom/github/snowdream/android/app/UpdateFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/snowdream/android/app/UpdateFormat;

    return-object p0
.end method

.method public static values()[Lcom/github/snowdream/android/app/UpdateFormat;
    .locals 1

    .line 9
    sget-object v0, Lcom/github/snowdream/android/app/UpdateFormat;->$VALUES:[Lcom/github/snowdream/android/app/UpdateFormat;

    invoke-virtual {v0}, [Lcom/github/snowdream/android/app/UpdateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/snowdream/android/app/UpdateFormat;

    return-object v0
.end method

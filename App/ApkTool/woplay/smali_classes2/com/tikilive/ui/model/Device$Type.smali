.class public final enum Lcom/tikilive/ui/model/Device$Type;
.super Ljava/lang/Enum;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/model/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tikilive/ui/model/Device$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tikilive/ui/model/Device$Type;

.field public static final enum ANDROID:Lcom/tikilive/ui/model/Device$Type;

.field public static final enum ANDROID_STB:Lcom/tikilive/ui/model/Device$Type;

.field public static final enum HISENSE:Lcom/tikilive/ui/model/Device$Type;

.field public static final enum HTML5:Lcom/tikilive/ui/model/Device$Type;

.field public static final enum IOS:Lcom/tikilive/ui/model/Device$Type;

.field public static final enum ROKU:Lcom/tikilive/ui/model/Device$Type;

.field public static final enum UNKNOWN:Lcom/tikilive/ui/model/Device$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 8
    new-instance v0, Lcom/tikilive/ui/model/Device$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tikilive/ui/model/Device$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tikilive/ui/model/Device$Type;->UNKNOWN:Lcom/tikilive/ui/model/Device$Type;

    .line 9
    new-instance v0, Lcom/tikilive/ui/model/Device$Type;

    const-string v1, "ANDROID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tikilive/ui/model/Device$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tikilive/ui/model/Device$Type;->ANDROID:Lcom/tikilive/ui/model/Device$Type;

    .line 10
    new-instance v0, Lcom/tikilive/ui/model/Device$Type;

    const-string v1, "ANDROID_STB"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tikilive/ui/model/Device$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tikilive/ui/model/Device$Type;->ANDROID_STB:Lcom/tikilive/ui/model/Device$Type;

    .line 11
    new-instance v0, Lcom/tikilive/ui/model/Device$Type;

    const-string v1, "HISENSE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tikilive/ui/model/Device$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tikilive/ui/model/Device$Type;->HISENSE:Lcom/tikilive/ui/model/Device$Type;

    .line 12
    new-instance v0, Lcom/tikilive/ui/model/Device$Type;

    const-string v1, "HTML5"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/tikilive/ui/model/Device$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tikilive/ui/model/Device$Type;->HTML5:Lcom/tikilive/ui/model/Device$Type;

    .line 13
    new-instance v0, Lcom/tikilive/ui/model/Device$Type;

    const-string v1, "IOS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/tikilive/ui/model/Device$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tikilive/ui/model/Device$Type;->IOS:Lcom/tikilive/ui/model/Device$Type;

    .line 14
    new-instance v0, Lcom/tikilive/ui/model/Device$Type;

    const-string v1, "ROKU"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/tikilive/ui/model/Device$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tikilive/ui/model/Device$Type;->ROKU:Lcom/tikilive/ui/model/Device$Type;

    const/4 v0, 0x7

    .line 7
    new-array v0, v0, [Lcom/tikilive/ui/model/Device$Type;

    sget-object v1, Lcom/tikilive/ui/model/Device$Type;->UNKNOWN:Lcom/tikilive/ui/model/Device$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tikilive/ui/model/Device$Type;->ANDROID:Lcom/tikilive/ui/model/Device$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tikilive/ui/model/Device$Type;->ANDROID_STB:Lcom/tikilive/ui/model/Device$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tikilive/ui/model/Device$Type;->HISENSE:Lcom/tikilive/ui/model/Device$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tikilive/ui/model/Device$Type;->HTML5:Lcom/tikilive/ui/model/Device$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tikilive/ui/model/Device$Type;->IOS:Lcom/tikilive/ui/model/Device$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tikilive/ui/model/Device$Type;->ROKU:Lcom/tikilive/ui/model/Device$Type;

    aput-object v1, v0, v8

    sput-object v0, Lcom/tikilive/ui/model/Device$Type;->$VALUES:[Lcom/tikilive/ui/model/Device$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tikilive/ui/model/Device$Type;
    .locals 1

    .line 7
    const-class v0, Lcom/tikilive/ui/model/Device$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tikilive/ui/model/Device$Type;

    return-object p0
.end method

.method public static values()[Lcom/tikilive/ui/model/Device$Type;
    .locals 1

    .line 7
    sget-object v0, Lcom/tikilive/ui/model/Device$Type;->$VALUES:[Lcom/tikilive/ui/model/Device$Type;

    invoke-virtual {v0}, [Lcom/tikilive/ui/model/Device$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tikilive/ui/model/Device$Type;

    return-object v0
.end method

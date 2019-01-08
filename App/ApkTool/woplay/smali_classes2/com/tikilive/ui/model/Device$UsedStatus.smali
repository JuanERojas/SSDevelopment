.class public final enum Lcom/tikilive/ui/model/Device$UsedStatus;
.super Ljava/lang/Enum;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/model/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UsedStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tikilive/ui/model/Device$UsedStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tikilive/ui/model/Device$UsedStatus;

.field public static final enum IN_USE:Lcom/tikilive/ui/model/Device$UsedStatus;

.field public static final enum NOT_IN_USE:Lcom/tikilive/ui/model/Device$UsedStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 18
    new-instance v0, Lcom/tikilive/ui/model/Device$UsedStatus;

    const-string v1, "IN_USE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tikilive/ui/model/Device$UsedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tikilive/ui/model/Device$UsedStatus;->IN_USE:Lcom/tikilive/ui/model/Device$UsedStatus;

    .line 19
    new-instance v0, Lcom/tikilive/ui/model/Device$UsedStatus;

    const-string v1, "NOT_IN_USE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tikilive/ui/model/Device$UsedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tikilive/ui/model/Device$UsedStatus;->NOT_IN_USE:Lcom/tikilive/ui/model/Device$UsedStatus;

    const/4 v0, 0x2

    .line 17
    new-array v0, v0, [Lcom/tikilive/ui/model/Device$UsedStatus;

    sget-object v1, Lcom/tikilive/ui/model/Device$UsedStatus;->IN_USE:Lcom/tikilive/ui/model/Device$UsedStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tikilive/ui/model/Device$UsedStatus;->NOT_IN_USE:Lcom/tikilive/ui/model/Device$UsedStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tikilive/ui/model/Device$UsedStatus;->$VALUES:[Lcom/tikilive/ui/model/Device$UsedStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tikilive/ui/model/Device$UsedStatus;
    .locals 1

    .line 17
    const-class v0, Lcom/tikilive/ui/model/Device$UsedStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tikilive/ui/model/Device$UsedStatus;

    return-object p0
.end method

.method public static values()[Lcom/tikilive/ui/model/Device$UsedStatus;
    .locals 1

    .line 17
    sget-object v0, Lcom/tikilive/ui/model/Device$UsedStatus;->$VALUES:[Lcom/tikilive/ui/model/Device$UsedStatus;

    invoke-virtual {v0}, [Lcom/tikilive/ui/model/Device$UsedStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tikilive/ui/model/Device$UsedStatus;

    return-object v0
.end method

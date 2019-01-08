.class public final enum Lcom/tikilive/ui/model/Package$Type;
.super Ljava/lang/Enum;
.source "Package.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/model/Package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tikilive/ui/model/Package$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tikilive/ui/model/Package$Type;

.field public static final enum CHANNEL:Lcom/tikilive/ui/model/Package$Type;

.field public static final enum GROUP:Lcom/tikilive/ui/model/Package$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/tikilive/ui/model/Package$Type;

    const-string v1, "GROUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tikilive/ui/model/Package$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tikilive/ui/model/Package$Type;->GROUP:Lcom/tikilive/ui/model/Package$Type;

    new-instance v0, Lcom/tikilive/ui/model/Package$Type;

    const-string v1, "CHANNEL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tikilive/ui/model/Package$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tikilive/ui/model/Package$Type;->CHANNEL:Lcom/tikilive/ui/model/Package$Type;

    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Lcom/tikilive/ui/model/Package$Type;

    sget-object v1, Lcom/tikilive/ui/model/Package$Type;->GROUP:Lcom/tikilive/ui/model/Package$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tikilive/ui/model/Package$Type;->CHANNEL:Lcom/tikilive/ui/model/Package$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tikilive/ui/model/Package$Type;->$VALUES:[Lcom/tikilive/ui/model/Package$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tikilive/ui/model/Package$Type;
    .locals 1

    .line 8
    const-class v0, Lcom/tikilive/ui/model/Package$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tikilive/ui/model/Package$Type;

    return-object p0
.end method

.method public static values()[Lcom/tikilive/ui/model/Package$Type;
    .locals 1

    .line 8
    sget-object v0, Lcom/tikilive/ui/model/Package$Type;->$VALUES:[Lcom/tikilive/ui/model/Package$Type;

    invoke-virtual {v0}, [Lcom/tikilive/ui/model/Package$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tikilive/ui/model/Package$Type;

    return-object v0
.end method

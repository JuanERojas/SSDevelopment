.class public final enum Lcom/tikilive/ui/model/DvrStatus;
.super Ljava/lang/Enum;
.source "DvrStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tikilive/ui/model/DvrStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tikilive/ui/model/DvrStatus;

.field public static final enum FAILED:Lcom/tikilive/ui/model/DvrStatus;

.field public static final enum PENDING:Lcom/tikilive/ui/model/DvrStatus;

.field public static final enum READY:Lcom/tikilive/ui/model/DvrStatus;

.field public static final enum RECORDING:Lcom/tikilive/ui/model/DvrStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/tikilive/ui/model/DvrStatus;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tikilive/ui/model/DvrStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tikilive/ui/model/DvrStatus;->PENDING:Lcom/tikilive/ui/model/DvrStatus;

    .line 5
    new-instance v0, Lcom/tikilive/ui/model/DvrStatus;

    const-string v1, "RECORDING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tikilive/ui/model/DvrStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tikilive/ui/model/DvrStatus;->RECORDING:Lcom/tikilive/ui/model/DvrStatus;

    .line 6
    new-instance v0, Lcom/tikilive/ui/model/DvrStatus;

    const-string v1, "READY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tikilive/ui/model/DvrStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tikilive/ui/model/DvrStatus;->READY:Lcom/tikilive/ui/model/DvrStatus;

    .line 7
    new-instance v0, Lcom/tikilive/ui/model/DvrStatus;

    const-string v1, "FAILED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tikilive/ui/model/DvrStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tikilive/ui/model/DvrStatus;->FAILED:Lcom/tikilive/ui/model/DvrStatus;

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lcom/tikilive/ui/model/DvrStatus;

    sget-object v1, Lcom/tikilive/ui/model/DvrStatus;->PENDING:Lcom/tikilive/ui/model/DvrStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tikilive/ui/model/DvrStatus;->RECORDING:Lcom/tikilive/ui/model/DvrStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tikilive/ui/model/DvrStatus;->READY:Lcom/tikilive/ui/model/DvrStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tikilive/ui/model/DvrStatus;->FAILED:Lcom/tikilive/ui/model/DvrStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tikilive/ui/model/DvrStatus;->$VALUES:[Lcom/tikilive/ui/model/DvrStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tikilive/ui/model/DvrStatus;
    .locals 1

    .line 3
    const-class v0, Lcom/tikilive/ui/model/DvrStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tikilive/ui/model/DvrStatus;

    return-object p0
.end method

.method public static values()[Lcom/tikilive/ui/model/DvrStatus;
    .locals 1

    .line 3
    sget-object v0, Lcom/tikilive/ui/model/DvrStatus;->$VALUES:[Lcom/tikilive/ui/model/DvrStatus;

    invoke-virtual {v0}, [Lcom/tikilive/ui/model/DvrStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tikilive/ui/model/DvrStatus;

    return-object v0
.end method

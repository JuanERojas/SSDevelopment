.class public final enum Lcom/peer5_aar/b/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/peer5_aar/b/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/peer5_aar/b/c;

.field public static final enum b:Lcom/peer5_aar/b/c;

.field private static final synthetic d:[Lcom/peer5_aar/b/c;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/peer5_aar/b/c;

    const-string v1, "GET"

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/peer5_aar/b/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/peer5_aar/b/c;->a:Lcom/peer5_aar/b/c;

    new-instance v0, Lcom/peer5_aar/b/c;

    const-string v1, "POST"

    const-string v2, "POST"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/peer5_aar/b/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/peer5_aar/b/c;->b:Lcom/peer5_aar/b/c;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/peer5_aar/b/c;

    sget-object v1, Lcom/peer5_aar/b/c;->a:Lcom/peer5_aar/b/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/peer5_aar/b/c;->b:Lcom/peer5_aar/b/c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/peer5_aar/b/c;->d:[Lcom/peer5_aar/b/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/peer5_aar/b/c;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/peer5_aar/b/c;
    .locals 1

    const-class v0, Lcom/peer5_aar/b/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/peer5_aar/b/c;

    return-object p0
.end method

.method public static values()[Lcom/peer5_aar/b/c;
    .locals 1

    sget-object v0, Lcom/peer5_aar/b/c;->d:[Lcom/peer5_aar/b/c;

    invoke-virtual {v0}, [Lcom/peer5_aar/b/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/peer5_aar/b/c;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/peer5_aar/b/c;->c:Ljava/lang/String;

    return-object v0
.end method

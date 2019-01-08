.class public final Lcom/peer5_aar/b/h;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/peer5_aar/b/c;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/util/Hashtable;

.field e:[B

.field f:J

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Hashtable;

.field private j:[I


# direct methods
.method public constructor <init>([ILjava/lang/String;ILjava/util/Hashtable;Lcom/peer5_aar/b/c;Ljava/util/Hashtable;[BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/peer5_aar/b/h;->j:[I

    iput-object p2, p0, Lcom/peer5_aar/b/h;->c:Ljava/lang/String;

    iput-object p8, p0, Lcom/peer5_aar/b/h;->h:Ljava/lang/String;

    iput p3, p0, Lcom/peer5_aar/b/h;->g:I

    iput-object p4, p0, Lcom/peer5_aar/b/h;->d:Ljava/util/Hashtable;

    iput-object p5, p0, Lcom/peer5_aar/b/h;->a:Lcom/peer5_aar/b/c;

    iput-object p6, p0, Lcom/peer5_aar/b/h;->i:Ljava/util/Hashtable;

    iput-object p7, p0, Lcom/peer5_aar/b/h;->e:[B

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    new-instance p2, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p3

    invoke-direct {p2, p3, p4}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {p2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/peer5_aar/b/h;->f:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/peer5_aar/b/h;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/peer5_aar/b/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/peer5_aar/b/h;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/peer5_aar/b/h;->b:Ljava/lang/String;

    return-object v0
.end method

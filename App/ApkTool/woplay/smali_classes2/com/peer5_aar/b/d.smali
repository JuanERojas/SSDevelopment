.class public final Lcom/peer5_aar/b/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:[[Ljava/lang/String;


# instance fields
.field private b:Lcom/peer5_aar/b/c;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Hashtable;

.field private f:Ljava/util/Hashtable;

.field private g:Ljava/lang/StringBuffer;

.field private h:Ljava/io/InputStream;

.field private i:[I

.field private j:[B

.field private k:Ljava/io/BufferedInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x29

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "100"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Continue"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "101"

    aput-object v3, v2, v4

    const-string v3, "Switching Protocols"

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "200"

    aput-object v3, v2, v4

    const-string v3, "OK"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "201"

    aput-object v3, v2, v4

    const-string v3, "Created"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "202"

    aput-object v3, v2, v4

    const-string v3, "Accepted"

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "203"

    aput-object v3, v2, v4

    const-string v3, "Non-Authoritative Information"

    aput-object v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "204"

    aput-object v3, v2, v4

    const-string v3, "No Content"

    aput-object v3, v2, v5

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "205"

    aput-object v3, v2, v4

    const-string v3, "Reset Content"

    aput-object v3, v2, v5

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "206"

    aput-object v3, v2, v4

    const-string v3, "Partial Content"

    aput-object v3, v2, v5

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "300"

    aput-object v3, v2, v4

    const-string v3, "Multiple Choices"

    aput-object v3, v2, v5

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "301"

    aput-object v3, v2, v4

    const-string v3, "Moved Permanently"

    aput-object v3, v2, v5

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "302"

    aput-object v3, v2, v4

    const-string v3, "Found"

    aput-object v3, v2, v5

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "303"

    aput-object v3, v2, v4

    const-string v3, "See Other"

    aput-object v3, v2, v5

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "304"

    aput-object v3, v2, v4

    const-string v3, "Not Modified"

    aput-object v3, v2, v5

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "305"

    aput-object v3, v2, v4

    const-string v3, "Use Proxy"

    aput-object v3, v2, v5

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "306"

    aput-object v3, v2, v4

    const-string v3, "(Unused)"

    aput-object v3, v2, v5

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "307"

    aput-object v3, v2, v4

    const-string v3, "Temporary Redirect"

    aput-object v3, v2, v5

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "400"

    aput-object v3, v2, v4

    const-string v3, "Bad Request"

    aput-object v3, v2, v5

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "401"

    aput-object v3, v2, v4

    const-string v3, "Unauthorized"

    aput-object v3, v2, v5

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "402"

    aput-object v3, v2, v4

    const-string v3, "Payment Required"

    aput-object v3, v2, v5

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "403"

    aput-object v3, v2, v4

    const-string v3, "Forbidden"

    aput-object v3, v2, v5

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "404"

    aput-object v3, v2, v4

    const-string v3, "Not Found"

    aput-object v3, v2, v5

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "405"

    aput-object v3, v2, v4

    const-string v3, "Method Not Allowed"

    aput-object v3, v2, v5

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "406"

    aput-object v3, v2, v4

    const-string v3, "Not Acceptable"

    aput-object v3, v2, v5

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "407"

    aput-object v3, v2, v4

    const-string v3, "Proxy Authentication Required"

    aput-object v3, v2, v5

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "408"

    aput-object v3, v2, v4

    const-string v3, "Request Timeout"

    aput-object v3, v2, v5

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "409"

    aput-object v3, v2, v4

    const-string v3, "Conflict"

    aput-object v3, v2, v5

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "410"

    aput-object v3, v2, v4

    const-string v3, "Gone"

    aput-object v3, v2, v5

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "411"

    aput-object v3, v2, v4

    const-string v3, "Length Required"

    aput-object v3, v2, v5

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "412"

    aput-object v3, v2, v4

    const-string v3, "Precondition Failed"

    aput-object v3, v2, v5

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "413"

    aput-object v3, v2, v4

    const-string v3, "Request Entity Too Large"

    aput-object v3, v2, v5

    const/16 v3, 0x1e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "414"

    aput-object v3, v2, v4

    const-string v3, "Request-URI Too Long"

    aput-object v3, v2, v5

    const/16 v3, 0x1f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "415"

    aput-object v3, v2, v4

    const-string v3, "Unsupported Media Type"

    aput-object v3, v2, v5

    const/16 v3, 0x20

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "416"

    aput-object v3, v2, v4

    const-string v3, "Requested Range Not Satisfiable"

    aput-object v3, v2, v5

    const/16 v3, 0x21

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "417"

    aput-object v3, v2, v4

    const-string v3, "Expectation Failed"

    aput-object v3, v2, v5

    const/16 v3, 0x22

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "500"

    aput-object v3, v2, v4

    const-string v3, "Internal Server Error"

    aput-object v3, v2, v5

    const/16 v3, 0x23

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "501"

    aput-object v3, v2, v4

    const-string v3, "Not Implemented"

    aput-object v3, v2, v5

    const/16 v3, 0x24

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "502"

    aput-object v3, v2, v4

    const-string v3, "Bad Gateway"

    aput-object v3, v2, v5

    const/16 v3, 0x25

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "503"

    aput-object v3, v2, v4

    const-string v3, "Service Unavailable"

    aput-object v3, v2, v5

    const/16 v3, 0x26

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "504"

    aput-object v3, v2, v4

    const-string v3, "Gateway Timeout"

    aput-object v3, v2, v5

    const/16 v3, 0x27

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "505"

    aput-object v2, v1, v4

    const-string v2, "HTTP Version Not Supported"

    aput-object v2, v1, v5

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sput-object v0, Lcom/peer5_aar/b/d;->a:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/peer5_aar/b/d;->h:Ljava/io/InputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/peer5_aar/b/d;->k:Ljava/io/BufferedInputStream;

    const-string p1, ""

    iput-object p1, p0, Lcom/peer5_aar/b/d;->c:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/peer5_aar/b/d;->d:Ljava/lang/String;

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/peer5_aar/b/d;->e:Ljava/util/Hashtable;

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/peer5_aar/b/d;->f:Ljava/util/Hashtable;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/peer5_aar/b/d;->i:[I

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/peer5_aar/b/d;->g:Ljava/lang/StringBuffer;

    return-void
.end method

.method private static a(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    int-to-char v1, v1

    if-ltz v1, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    int-to-char v1, v1

    if-ltz v1, :cond_1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lcom/peer5_aar/b/d;->k:Ljava/io/BufferedInputStream;

    invoke-static {v0}, Lcom/peer5_aar/b/d;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/peer5_aar/b/d;->e:Ljava/util/Hashtable;

    return-void

    :cond_0
    iget-object v2, p0, Lcom/peer5_aar/b/d;->e:Ljava/util/Hashtable;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c()V
    .locals 9

    iget-object v0, p0, Lcom/peer5_aar/b/d;->e:Ljava/util/Hashtable;

    const-string v1, "content-length"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x2000

    new-array v3, v3, [B

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    int-to-long v6, v5

    cmp-long v8, v6, v0

    if-gez v8, :cond_0

    iget-object v6, p0, Lcom/peer5_aar/b/d;->k:Ljava/io/BufferedInputStream;

    invoke-virtual {v6, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    invoke-virtual {v2, v3, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v5, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/peer5_aar/b/d;->j:[B

    return-void
.end method


# virtual methods
.method public final a()Lcom/peer5_aar/b/h;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/peer5_aar/b/d;->k:Ljava/io/BufferedInputStream;

    invoke-static {v1}, Lcom/peer5_aar/b/d;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_b

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Lcom/peer5_aar/b/h;

    iget-object v5, v0, Lcom/peer5_aar/b/d;->i:[I

    iget-object v6, v0, Lcom/peer5_aar/b/d;->c:Ljava/lang/String;

    const/16 v7, 0x190

    iget-object v8, v0, Lcom/peer5_aar/b/d;->f:Ljava/util/Hashtable;

    iget-object v9, v0, Lcom/peer5_aar/b/d;->b:Lcom/peer5_aar/b/c;

    iget-object v10, v0, Lcom/peer5_aar/b/d;->e:Ljava/util/Hashtable;

    iget-object v11, v0, Lcom/peer5_aar/b/d;->j:[B

    iget-object v12, v0, Lcom/peer5_aar/b/d;->d:Ljava/lang/String;

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lcom/peer5_aar/b/h;-><init>([ILjava/lang/String;ILjava/util/Hashtable;Lcom/peer5_aar/b/c;Ljava/util/Hashtable;[BLjava/lang/String;)V

    return-object v1

    :cond_1
    const-string v3, "\\s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    new-instance v1, Lcom/peer5_aar/b/h;

    iget-object v6, v0, Lcom/peer5_aar/b/d;->i:[I

    iget-object v7, v0, Lcom/peer5_aar/b/d;->c:Ljava/lang/String;

    const/16 v8, 0x190

    iget-object v9, v0, Lcom/peer5_aar/b/d;->f:Ljava/util/Hashtable;

    iget-object v10, v0, Lcom/peer5_aar/b/d;->b:Lcom/peer5_aar/b/c;

    iget-object v11, v0, Lcom/peer5_aar/b/d;->e:Ljava/util/Hashtable;

    iget-object v12, v0, Lcom/peer5_aar/b/d;->j:[B

    iget-object v13, v0, Lcom/peer5_aar/b/d;->d:Ljava/lang/String;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lcom/peer5_aar/b/h;-><init>([ILjava/lang/String;ILjava/util/Hashtable;Lcom/peer5_aar/b/c;Ljava/util/Hashtable;[BLjava/lang/String;)V

    return-object v1

    :cond_2
    const/4 v3, 0x2

    aget-object v4, v1, v3

    const-string v5, "HTTP/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x190

    const/4 v6, 0x1

    if-nez v4, :cond_3

    aget-object v4, v1, v3

    const/16 v7, 0x2e

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v7, 0x5

    if-le v4, v7, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "\\."

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v7, v0, Lcom/peer5_aar/b/d;->i:[I

    aget-object v8, v4, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v2

    iget-object v7, v0, Lcom/peer5_aar/b/d;->i:[I

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v7, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0xc8

    goto :goto_0

    :catch_0
    :cond_3
    const/16 v4, 0x190

    :goto_0
    aget-object v7, v1, v2

    const-string v8, "GET"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x3d

    const/16 v9, 0x3f

    if-nez v7, :cond_c

    aget-object v7, v1, v2

    const-string v10, "HEAD"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_4

    :cond_4
    aget-object v7, v1, v2

    const-string v10, "POST"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Lcom/peer5_aar/b/c;->b:Lcom/peer5_aar/b/c;

    iput-object v7, v0, Lcom/peer5_aar/b/d;->b:Lcom/peer5_aar/b/c;

    aget-object v7, v1, v6

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_5

    aget-object v1, v1, v6

    iput-object v1, v0, Lcom/peer5_aar/b/d;->c:Ljava/lang/String;

    goto :goto_3

    :cond_5
    aget-object v9, v1, v6

    invoke-virtual {v9, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "ISO-8859-1"

    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/peer5_aar/b/d;->c:Ljava/lang/String;

    aget-object v9, v1, v6

    add-int/2addr v7, v6

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/peer5_aar/b/d;->d:Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "&"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    iput-object v7, v0, Lcom/peer5_aar/b/d;->f:Ljava/util/Hashtable;

    const/4 v7, 0x0

    :goto_1
    array-length v9, v1

    if-ge v7, v9, :cond_8

    aget-object v9, v1, v7

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    if-ne v10, v3, :cond_6

    iget-object v10, v0, Lcom/peer5_aar/b/d;->f:Ljava/util/Hashtable;

    aget-object v11, v9, v2

    const-string v12, "ISO-8859-1"

    invoke-static {v11, v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aget-object v9, v9, v6

    const-string v12, "ISO-8859-1"

    invoke-static {v9, v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    array-length v10, v9

    if-ne v10, v6, :cond_7

    aget-object v10, v1, v7

    invoke-virtual {v10, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    aget-object v11, v1, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v6

    if-ne v10, v11, :cond_7

    iget-object v10, v0, Lcom/peer5_aar/b/d;->f:Ljava/util/Hashtable;

    aget-object v9, v9, v2

    const-string v11, "ISO-8859-1"

    invoke-static {v9, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, ""

    invoke-virtual {v10, v9, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/peer5_aar/b/d;->b()V

    iget-object v1, v0, Lcom/peer5_aar/b/d;->e:Ljava/util/Hashtable;

    if-nez v1, :cond_9

    const/16 v4, 0x190

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/peer5_aar/b/d;->c()V

    goto/16 :goto_8

    :cond_a
    iget-object v3, v0, Lcom/peer5_aar/b/d;->i:[I

    aget v3, v3, v2

    if-ne v3, v6, :cond_11

    iget-object v3, v0, Lcom/peer5_aar/b/d;->i:[I

    aget v3, v3, v6

    if-lez v3, :cond_11

    aget-object v3, v1, v2

    const-string v7, "OPTIONS"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    aget-object v3, v1, v2

    const-string v7, "PUT"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    aget-object v3, v1, v2

    const-string v7, "DELETE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    aget-object v3, v1, v2

    const-string v7, "TRACE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    aget-object v1, v1, v2

    const-string v3, "CONNECT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_b
    const/16 v1, 0x1f5

    const/16 v4, 0x1f5

    goto/16 :goto_8

    :cond_c
    :goto_4
    sget-object v7, Lcom/peer5_aar/b/c;->a:Lcom/peer5_aar/b/c;

    iput-object v7, v0, Lcom/peer5_aar/b/d;->b:Lcom/peer5_aar/b/c;

    aget-object v7, v1, v6

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_d

    aget-object v1, v1, v6

    iput-object v1, v0, Lcom/peer5_aar/b/d;->c:Ljava/lang/String;

    goto :goto_7

    :cond_d
    aget-object v9, v1, v6

    invoke-virtual {v9, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "ISO-8859-1"

    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/peer5_aar/b/d;->c:Ljava/lang/String;

    aget-object v9, v1, v6

    add-int/2addr v7, v6

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/peer5_aar/b/d;->d:Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "&"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    iput-object v7, v0, Lcom/peer5_aar/b/d;->f:Ljava/util/Hashtable;

    const/4 v7, 0x0

    :goto_5
    array-length v9, v1

    if-ge v7, v9, :cond_10

    aget-object v9, v1, v7

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    if-ne v10, v3, :cond_e

    iget-object v10, v0, Lcom/peer5_aar/b/d;->f:Ljava/util/Hashtable;

    aget-object v11, v9, v2

    const-string v12, "ISO-8859-1"

    invoke-static {v11, v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aget-object v9, v9, v6

    const-string v12, "ISO-8859-1"

    invoke-static {v9, v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_e
    array-length v10, v9

    if-ne v10, v6, :cond_f

    aget-object v10, v1, v7

    invoke-virtual {v10, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    aget-object v11, v1, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v6

    if-ne v10, v11, :cond_f

    iget-object v10, v0, Lcom/peer5_aar/b/d;->f:Ljava/util/Hashtable;

    aget-object v9, v9, v2

    const-string v11, "ISO-8859-1"

    invoke-static {v9, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, ""

    invoke-virtual {v10, v9, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_10
    :goto_7
    iget-object v1, v0, Lcom/peer5_aar/b/d;->e:Ljava/util/Hashtable;

    if-nez v1, :cond_12

    :cond_11
    const/16 v4, 0x190

    :cond_12
    :goto_8
    iget-object v1, v0, Lcom/peer5_aar/b/d;->i:[I

    aget v1, v1, v2

    if-ne v1, v6, :cond_14

    iget-object v1, v0, Lcom/peer5_aar/b/d;->i:[I

    aget v1, v1, v6

    if-lez v1, :cond_14

    const-string v1, "Host"

    iget-object v2, v0, Lcom/peer5_aar/b/d;->e:Ljava/util/Hashtable;

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/peer5_aar/b/d;->e:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_9

    :cond_13
    const/4 v1, 0x0

    :goto_9
    if-nez v1, :cond_14

    const/16 v9, 0x190

    goto :goto_a

    :cond_14
    move v9, v4

    :goto_a
    new-instance v1, Lcom/peer5_aar/b/h;

    iget-object v7, v0, Lcom/peer5_aar/b/d;->i:[I

    iget-object v8, v0, Lcom/peer5_aar/b/d;->c:Ljava/lang/String;

    iget-object v10, v0, Lcom/peer5_aar/b/d;->f:Ljava/util/Hashtable;

    iget-object v11, v0, Lcom/peer5_aar/b/d;->b:Lcom/peer5_aar/b/c;

    iget-object v12, v0, Lcom/peer5_aar/b/d;->e:Ljava/util/Hashtable;

    iget-object v13, v0, Lcom/peer5_aar/b/d;->j:[B

    iget-object v14, v0, Lcom/peer5_aar/b/d;->d:Ljava/lang/String;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lcom/peer5_aar/b/h;-><init>([ILjava/lang/String;ILjava/util/Hashtable;Lcom/peer5_aar/b/c;Ljava/util/Hashtable;[BLjava/lang/String;)V

    return-object v1

    :cond_15
    :goto_b
    new-instance v1, Lcom/peer5_aar/b/h;

    iget-object v2, v0, Lcom/peer5_aar/b/d;->i:[I

    iget-object v3, v0, Lcom/peer5_aar/b/d;->c:Ljava/lang/String;

    const/16 v18, 0x0

    iget-object v4, v0, Lcom/peer5_aar/b/d;->f:Ljava/util/Hashtable;

    iget-object v5, v0, Lcom/peer5_aar/b/d;->b:Lcom/peer5_aar/b/c;

    iget-object v6, v0, Lcom/peer5_aar/b/d;->e:Ljava/util/Hashtable;

    iget-object v7, v0, Lcom/peer5_aar/b/d;->j:[B

    iget-object v8, v0, Lcom/peer5_aar/b/d;->d:Ljava/lang/String;

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    invoke-direct/range {v15 .. v23}, Lcom/peer5_aar/b/h;-><init>([ILjava/lang/String;ILjava/util/Hashtable;Lcom/peer5_aar/b/c;Ljava/util/Hashtable;[BLjava/lang/String;)V

    return-object v1
.end method

.class public Lcom/tikilive/ui/guide/ChannelGuideDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ChannelGuideDbHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "ChannelGuideCache.db"

.field public static final DATABASE_VERSION:I = 0x12c

.field private static final SQL_CREATE_DVRS:Ljava/lang/String; = "CREATE TABLE dvrs (    event_id INTEGER NOT NULL,    status TEXT,PRIMARY KEY(event_id))"

.field private static final SQL_CREATE_EVENTS:Ljava/lang/String; = "CREATE TABLE events (    id INTEGER PRIMARY KEY,    channel_id INTEGER,    channel_type TEXT,    name TEXT,    description TEXT,    start INTEGER,    end INTEGER,    img TEXT,    purchase_url TEXT,    ppv INTEGER DEFAULT 0,    ticket INTEGER DEFAULT 0,    modified INTEGER DEFAULT 0)"

.field private static final SQL_CREATE_EVENTS_IDX1:Ljava/lang/String; = "CREATE INDEX idx_start_end ON events (start ASC, end ASC)"

.field private static final SQL_CREATE_EVENTS_IDX2:Ljava/lang/String; = "CREATE INDEX idx_channel_type ON events (channel_type ASC)"

.field private static final SQL_CREATE_REQUESTS:Ljava/lang/String; = "CREATE TABLE requests (    id INTEGER PRIMARY KEY AUTOINCREMENT,    start INTEGER,    end INTEGER,    tag TEXT DEFAULT \'\',    UNIQUE (start, end) ON CONFLICT REPLACE)"

.field private static final SQL_DELETE_DVRS:Ljava/lang/String; = "DROP TABLE IF EXISTS dvrs"

.field private static final SQL_DELETE_EVENTS:Ljava/lang/String; = "DROP TABLE IF EXISTS events"

.field private static final SQL_DELETE_REQUESTS:Ljava/lang/String; = "DROP TABLE IF EXISTS requests"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ChannelGuideCache.db"

    const/4 v1, 0x0

    const/16 v2, 0x12c

    .line 60
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE events (    id INTEGER PRIMARY KEY,    channel_id INTEGER,    channel_type TEXT,    name TEXT,    description TEXT,    start INTEGER,    end INTEGER,    img TEXT,    purchase_url TEXT,    ppv INTEGER DEFAULT 0,    ticket INTEGER DEFAULT 0,    modified INTEGER DEFAULT 0)"

    .line 66
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX idx_start_end ON events (start ASC, end ASC)"

    .line 67
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX idx_channel_type ON events (channel_type ASC)"

    .line 68
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE requests (    id INTEGER PRIMARY KEY AUTOINCREMENT,    start INTEGER,    end INTEGER,    tag TEXT DEFAULT \'\',    UNIQUE (start, end) ON CONFLICT REPLACE)"

    .line 69
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE dvrs (    event_id INTEGER NOT NULL,    status TEXT,PRIMARY KEY(event_id))"

    .line 70
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Lcom/tikilive/ui/guide/ChannelGuideDbHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS events"

    .line 78
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS requests"

    .line 79
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS dvrs"

    .line 80
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/guide/ChannelGuideDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

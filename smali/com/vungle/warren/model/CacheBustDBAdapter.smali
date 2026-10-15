###### Class com.vungle.warren.model.CacheBustDBAdapter (com.vungle.warren.model.CacheBustDBAdapter)
.class public Lcom/vungle/warren/model/CacheBustDBAdapter;
.super Ljava/lang/Object;
.source "CacheBustDBAdapter.java"

# interfaces
.implements Lcom/vungle/warren/persistence/DBAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/model/CacheBustDBAdapter$CacheBustColumns;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/persistence/DBAdapter<",
        "Lcom/vungle/warren/model/CacheBust;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATE_CACHE_BUST_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS cache_bust(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, id TEXT, time_window_end INTEGER, id_type INTEGER, event_ids TEXT, timestamp_processed INTEGER )"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_2a

    .line 1
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_2a

    .line 2
    :cond_6
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    .line 3
    aget-object p0, p0, v1

    return-object p0

    .line 4
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    :goto_15
    array-length v1, p0

    if-ge v2, v1, :cond_25

    const-string v1, ";"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p0, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 7
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    :goto_2a
    const-string p0, ""

    return-object p0
.end method

.method static b(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    :cond_a
    const-string v0, ";"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/CacheBust;
    .registers 5

    .line 2
    new-instance v0, Lcom/vungle/warren/model/CacheBust;

    invoke-direct {v0}, Lcom/vungle/warren/model/CacheBust;-><init>()V

    const-string v1, "id"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/CacheBust;->a:Ljava/lang/String;

    const-string v1, "time_window_end"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vungle/warren/model/CacheBust;->b:J

    const-string v1, "id_type"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/CacheBust;->c:I

    const-string v1, "event_ids"

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/warren/model/CacheBustDBAdapter;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/CacheBust;->d:[Ljava/lang/String;

    const-string v1, "timestamp_processed"

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vungle/warren/model/CacheBust;->e:J

    return-object v0
.end method

.method public bridge synthetic fromContentValues(Landroid/content/ContentValues;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/vungle/warren/model/CacheBustDBAdapter;->fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/CacheBust;

    move-result-object p1

    return-object p1
.end method

.method public tableName()Ljava/lang/String;
    .registers 2

    const-string v0, "cache_bust"

    return-object v0
.end method

.method public toContentValues(Lcom/vungle/warren/model/CacheBust;)Landroid/content/ContentValues;
    .registers 5

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/vungle/warren/model/CacheBust;->calculateId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "item_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p1, Lcom/vungle/warren/model/CacheBust;->a:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-wide v1, p1, Lcom/vungle/warren/model/CacheBust;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time_window_end"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6
    iget v1, p1, Lcom/vungle/warren/model/CacheBust;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    iget-object v1, p1, Lcom/vungle/warren/model/CacheBust;->d:[Ljava/lang/String;

    invoke-static {v1}, Lcom/vungle/warren/model/CacheBustDBAdapter;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_ids"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-wide v1, p1, Lcom/vungle/warren/model/CacheBust;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "timestamp_processed"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public bridge synthetic toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .registers 2

    .line 1
    check-cast p1, Lcom/vungle/warren/model/CacheBust;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/model/CacheBustDBAdapter;->toContentValues(Lcom/vungle/warren/model/CacheBust;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

###### Class com.vungle.warren.model.CacheBustDBAdapter.CacheBustColumns (com.vungle.warren.model.CacheBustDBAdapter$CacheBustColumns)
.class public interface abstract Lcom/vungle/warren/model/CacheBustDBAdapter$CacheBustColumns;
.super Ljava/lang/Object;
.source "CacheBustDBAdapter.java"

# interfaces
.implements Lcom/vungle/warren/persistence/IdColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/CacheBustDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CacheBustColumns"
.end annotation


# static fields
.field public static final COLUMN_EVENT_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_EVENT_IDS:Ljava/lang/String; = "event_ids"

.field public static final COLUMN_EVENT_ID_TYPE:Ljava/lang/String; = "id_type"

.field public static final COLUMN_TIMESTAMP_PROCESSED:Ljava/lang/String; = "timestamp_processed"

.field public static final COLUMN_TIME_WINDOW_END:Ljava/lang/String; = "time_window_end"

.field public static final TABLE_NAME:Ljava/lang/String; = "cache_bust"

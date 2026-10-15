###### Class com.vungle.warren.log.LogEntry (com.vungle.warren.log.LogEntry)
.class Lcom/vungle/warren/log/LogEntry;
.super Ljava/lang/Object;
.source "LogEntry.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/vungle/warren/log/LogEntry;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/log/LogEntry;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/vungle/warren/log/LogEntry;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/vungle/warren/log/LogEntry;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/vungle/warren/log/LogEntry;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/vungle/warren/log/LogEntry;->f:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/vungle/warren/log/LogEntry;->g:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/vungle/warren/log/LogEntry;->h:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/vungle/warren/log/LogEntry;->i:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/vungle/warren/log/LogEntry;->j:Ljava/lang/String;

    .line 12
    iput-object p11, p0, Lcom/vungle/warren/log/LogEntry;->k:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/gson/o;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p3, :cond_5

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public toJsonString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/gson/o;

    invoke-direct {v0}, Lcom/google/gson/o;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/log/LogEntry;->b:Ljava/lang/String;

    const-string v2, "raw_log"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/google/gson/o;

    invoke-direct {v1}, Lcom/google/gson/o;-><init>()V

    const-string v2, "metadata"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 5
    iget-object v2, p0, Lcom/vungle/warren/log/LogEntry;->a:Ljava/lang/String;

    const-string v3, "log_level"

    invoke-direct {p0, v1, v3, v2}, Lcom/vungle/warren/log/LogEntry;->a(Lcom/google/gson/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/vungle/warren/log/LogEntry;->c:Ljava/lang/String;

    const-string v3, "context"

    invoke-direct {p0, v1, v3, v2}, Lcom/vungle/warren/log/LogEntry;->a(Lcom/google/gson/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/vungle/warren/log/LogEntry;->d:Ljava/lang/String;

    const-string v3, "event_id"

    invoke-direct {p0, v1, v3, v2}, Lcom/vungle/warren/log/LogEntry;->a(Lcom/google/gson/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/vungle/warren/log/LogEntry;->e:Ljava/lang/String;

    const-string v3, "sdk_user_agent"

    invoke-direct {p0, v1, v3, v2}, Lcom/vungle/warren/log/LogEntry;->a(Lcom/google/gson/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/vungle/warren/log/LogEntry;->f:Ljava/lang/String;

    const-string v3, "bundle_id"

    invoke-direct {p0, v1, v3, v2}, Lcom/vungle/warren/log/LogEntry;->a(Lcom/google/gson/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/vungle/warren/log/LogEntry;->g:Ljava/lang/String;

    const-string v3, "time_zone"

    invoke-direct {p0, v1, v3, v2}, Lcom/vungle/warren/log/LogEntry;->a(Lcom/google/gson/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/vungle/warren/log/LogEntry;->h:Ljava/lang/String;

    const-string v3, "device_timestamp"

    invoke-direct {p0, v1, v3, v2}, Lcom/vungle/warren/log/LogEntry;->a(Lcom/google/gson/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/vungle/warren/log/LogEntry;->i:Ljava/lang/String;

    const-string v3, "custom_data"

    invoke-direct {p0, v1, v3, v2}, Lcom/vungle/warren/log/LogEntry;->a(Lcom/google/gson/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Lcom/vungle/warren/log/LogEntry;->j:Ljava/lang/String;

    const-string v3, "exception_class"

    invoke-direct {p0, v1, v3, v2}, Lcom/vungle/warren/log/LogEntry;->a(Lcom/google/gson/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/vungle/warren/log/LogEntry;->k:Ljava/lang/String;

    const-string v3, "thread_id"

    invoke-direct {p0, v1, v3, v2}, Lcom/vungle/warren/log/LogEntry;->a(Lcom/google/gson/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/google/gson/l;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

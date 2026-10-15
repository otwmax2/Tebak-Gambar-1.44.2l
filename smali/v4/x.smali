###### Class v4.x (v4.x)
.class public final Lv4/x;
.super Lv4/w;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field private final o:Lv4/w;

.field private final p:J

.field private final q:J


# direct methods
.method public constructor <init>(Lv4/w;JJ)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lv4/w;-><init>()V

    iput-object p1, p0, Lv4/x;->o:Lv4/w;

    invoke-direct {p0, p2, p3}, Lv4/x;->e(J)J

    move-result-wide p1

    iput-wide p1, p0, Lv4/x;->p:J

    add-long/2addr p1, p4

    .line 2
    invoke-direct {p0, p1, p2}, Lv4/x;->e(J)J

    move-result-wide p1

    iput-wide p1, p0, Lv4/x;->q:J

    return-void
.end method

.method private final e(J)J
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    return-wide v0

    .line 1
    :cond_7
    iget-object v0, p0, Lv4/x;->o:Lv4/w;

    invoke-virtual {v0}, Lv4/w;->b()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_17

    iget-object p1, p0, Lv4/x;->o:Lv4/w;

    .line 2
    invoke-virtual {p1}, Lv4/w;->b()J

    move-result-wide p1

    :cond_17
    return-wide p1
.end method


# virtual methods
.method public final b()J
    .registers 5

    iget-wide v0, p0, Lv4/x;->q:J

    iget-wide v2, p0, Lv4/x;->p:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected final c(JJ)Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide p1, p0, Lv4/x;->p:J

    invoke-direct {p0, p1, p2}, Lv4/x;->e(J)J

    move-result-wide p1

    add-long/2addr p3, p1

    .line 2
    invoke-direct {p0, p3, p4}, Lv4/x;->e(J)J

    move-result-wide p3

    iget-object v0, p0, Lv4/x;->o:Lv4/w;

    sub-long/2addr p3, p1

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lv4/w;->c(JJ)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

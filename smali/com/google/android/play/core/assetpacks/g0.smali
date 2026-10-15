###### Class com.google.android.play.core.assetpacks.g0 (com.google.android.play.core.assetpacks.g0)
.class final Lcom/google/android/play/core/assetpacks/g0;
.super Ljava/io/InputStream;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field private final o:Ljava/io/InputStream;

.field private p:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;J)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/g0;->o:Ljava/io/InputStream;

    iput-wide p2, p0, Lcom/google/android/play/core/assetpacks/g0;->p:J

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g0;->o:Ljava/io/InputStream;

    .line 2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/play/core/assetpacks/g0;->p:J

    return-void
.end method

.method public final read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/g0;->p:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_a

    const/4 v0, -0x1

    return v0

    :cond_a
    const-wide/16 v2, -0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/play/core/assetpacks/g0;->p:J

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g0;->o:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/g0;->p:J

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_a

    return v2

    :cond_a
    int-to-long v3, p3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object p3, p0, Lcom/google/android/play/core/assetpacks/g0;->o:Ljava/io/InputStream;

    long-to-int v1, v0

    .line 3
    invoke-virtual {p3, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-eq p1, v2, :cond_1e

    iget-wide p2, p0, Lcom/google/android/play/core/assetpacks/g0;->p:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/play/core/assetpacks/g0;->p:J

    :cond_1e
    return p1
.end method

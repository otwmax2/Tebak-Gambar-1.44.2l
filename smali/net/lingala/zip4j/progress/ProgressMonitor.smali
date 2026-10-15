###### Class net.lingala.zip4j.progress.ProgressMonitor (net.lingala.zip4j.progress.ProgressMonitor)
.class public Lnet/lingala/zip4j/progress/ProgressMonitor;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/Throwable;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->e()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->e()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->g:I

    .line 3
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->h:Ljava/lang/Throwable;

    return-void
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->e()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->g:I

    return-void
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:I

    return v0
.end method

.method public d()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->i:Z

    return v0
.end method

.method public e()V
    .registers 4

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->f:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->b:J

    .line 5
    iput-wide v1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->c:J

    .line 6
    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:I

    return-void
.end method

.method public f(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->f:Ljava/lang/String;

    return-void
.end method

.method public h(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->g:I

    return-void
.end method

.method public i(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:I

    return-void
.end method

.method public j(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->b:J

    return-void
.end method

.method public k(J)V
    .registers 8

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->c:J

    .line 2
    iget-wide p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1b

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    .line 3
    div-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:I

    const/16 p2, 0x64

    if-le p1, p2, :cond_1b

    .line 4
    iput p2, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:I

    .line 5
    :cond_1b
    :goto_1b
    iget-boolean p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->j:Z

    if-eqz p1, :cond_27

    const-wide/16 p1, 0x96

    .line 6
    :try_start_21
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_1b

    :catch_25
    nop

    goto :goto_1b

    :cond_27
    return-void
.end method

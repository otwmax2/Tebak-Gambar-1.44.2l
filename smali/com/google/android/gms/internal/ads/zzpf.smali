###### Class com.google.android.gms.internal.ads.zzpf (com.google.android.gms.internal.ads.zzpf)
.class public final Lcom/google/android/gms/internal/ads/zzpf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzoi;


# static fields
.field private static final V:Ljava/lang/Object;

.field private static W:Ljava/util/concurrent/ExecutorService;

.field private static X:I


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:J

.field private E:F

.field private F:Ljava/nio/ByteBuffer;

.field private G:I

.field private H:Ljava/nio/ByteBuffer;

.field private I:[B

.field private J:I

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:I

.field private P:Lcom/google/android/gms/internal/ads/zzl;

.field private Q:Lcom/google/android/gms/internal/ads/zzor;

.field private R:J

.field private S:Z

.field private T:Z

.field private final U:Lcom/google/android/gms/internal/ads/zzov;

.field private final a:Lcom/google/android/gms/internal/ads/zznq;

.field private final b:Lcom/google/android/gms/internal/ads/zzon;

.field private final c:Lcom/google/android/gms/internal/ads/zzpo;

.field private final d:Lcom/google/android/gms/internal/ads/zzfqk;

.field private final e:Lcom/google/android/gms/internal/ads/zzfqk;

.field private final f:Lcom/google/android/gms/internal/ads/zzdo;

.field private final g:Lcom/google/android/gms/internal/ads/zzom;

.field private final h:Ljava/util/ArrayDeque;

.field private i:Lcom/google/android/gms/internal/ads/zzpd;

.field private final j:Lcom/google/android/gms/internal/ads/zzoy;

.field private final k:Lcom/google/android/gms/internal/ads/zzoy;

.field private final l:Lcom/google/android/gms/internal/ads/zzos;

.field private m:Lcom/google/android/gms/internal/ads/zzno;

.field private n:Lcom/google/android/gms/internal/ads/zzof;

.field private o:Lcom/google/android/gms/internal/ads/zzou;

.field private p:Lcom/google/android/gms/internal/ads/zzou;

.field private q:Lcom/google/android/gms/internal/ads/zzdb;

.field private r:Landroid/media/AudioTrack;

.field private s:Lcom/google/android/gms/internal/ads/zzk;

.field private t:Lcom/google/android/gms/internal/ads/zzox;

.field private u:Lcom/google/android/gms/internal/ads/zzox;

.field private final v:Lcom/google/android/gms/internal/ads/zzby;

.field private w:J

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpf;->V:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzot;Lcom/google/android/gms/internal/ads/zzpe;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzot;->a(Lcom/google/android/gms/internal/ads/zzot;)Lcom/google/android/gms/internal/ads/zznq;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpf;->a:Lcom/google/android/gms/internal/ads/zznq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzot;->e(Lcom/google/android/gms/internal/ads/zzot;)Lcom/google/android/gms/internal/ads/zzov;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpf;->U:Lcom/google/android/gms/internal/ads/zzov;

    sget p2, Lcom/google/android/gms/internal/ads/zzew;->a:I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzot;->b:Lcom/google/android/gms/internal/ads/zzos;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->l:Lcom/google/android/gms/internal/ads/zzos;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdo;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdm;->a:Lcom/google/android/gms/internal/ads/zzdm;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdo;-><init>(Lcom/google/android/gms/internal/ads/zzdm;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->f:Lcom/google/android/gms/internal/ads/zzdo;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdo;->e()Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzom;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzpa;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/zzpa;-><init>(Lcom/google/android/gms/internal/ads/zzpf;Lcom/google/android/gms/internal/ads/zzoz;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzom;-><init>(Lcom/google/android/gms/internal/ads/zzol;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->g:Lcom/google/android/gms/internal/ads/zzom;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzon;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzon;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->b:Lcom/google/android/gms/internal/ads/zzon;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzpo;

    .line 5
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzpo;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpf;->c:Lcom/google/android/gms/internal/ads/zzpo;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdi;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdi;-><init>()V

    .line 7
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfqk;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->d:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzpn;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfqk;->v(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->e:Lcom/google/android/gms/internal/ads/zzfqk;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->E:F

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzk;->c:Lcom/google/android/gms/internal/ads/zzk;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->s:Lcom/google/android/gms/internal/ads/zzk;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->O:I

    new-instance p2, Lcom/google/android/gms/internal/ads/zzl;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzl;-><init>(IF)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpf;->P:Lcom/google/android/gms/internal/ads/zzl;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzox;

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/ads/zzby;->d:Lcom/google/android/gms/internal/ads/zzby;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzox;-><init>(Lcom/google/android/gms/internal/ads/zzby;ZJJLcom/google/android/gms/internal/ads/zzow;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->u:Lcom/google/android/gms/internal/ads/zzox;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpf;->v:Lcom/google/android/gms/internal/ads/zzby;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 11
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->h:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzoy;

    const-wide/16 v0, 0x64

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzoy;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->j:Lcom/google/android/gms/internal/ads/zzoy;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzoy;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzoy;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->k:Lcom/google/android/gms/internal/ads/zzoy;

    return-void
.end method

.method private final A()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private static B(Landroid/media/AudioTrack;)Z
    .registers 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private final C()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzou;->a:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string v1, "audio/raw"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzou;->a:Lcom/google/android/gms/internal/ads/zzaf;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->A:I

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method static bridge synthetic D(Lcom/google/android/gms/internal/ads/zzpf;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->R:J

    return-wide v0
.end method

.method static bridge synthetic E(Lcom/google/android/gms/internal/ads/zzpf;)J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic F(Lcom/google/android/gms/internal/ads/zzpf;)J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic d(III)Landroid/media/AudioFormat;
    .registers 4

    .line 1
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic i(Lcom/google/android/gms/internal/ads/zzpf;)Landroid/media/AudioTrack;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/google/android/gms/internal/ads/zzpf;)Lcom/google/android/gms/internal/ads/zzof;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzpf;->n:Lcom/google/android/gms/internal/ads/zzof;

    return-object p0
.end method

.method static synthetic k(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzdo;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    .line 2
    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_21

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdo;->e()Z

    sget-object p0, Lcom/google/android/gms/internal/ads/zzpf;->V:Ljava/lang/Object;

    monitor-enter p0

    :try_start_d
    sget p1, Lcom/google/android/gms/internal/ads/zzpf;->X:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/google/android/gms/internal/ads/zzpf;->X:I

    if-nez p1, :cond_1c

    sget-object p1, Lcom/google/android/gms/internal/ads/zzpf;->W:Ljava/util/concurrent/ExecutorService;

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpf;->W:Ljava/util/concurrent/ExecutorService;

    .line 5
    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_1e

    throw p1

    :catchall_21
    move-exception p0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdo;->e()Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzpf;->V:Ljava/lang/Object;

    monitor-enter p1

    :try_start_28
    sget v1, Lcom/google/android/gms/internal/ads/zzpf;->X:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/google/android/gms/internal/ads/zzpf;->X:I

    if-nez v1, :cond_37

    sget-object v1, Lcom/google/android/gms/internal/ads/zzpf;->W:Ljava/util/concurrent/ExecutorService;

    .line 7
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpf;->W:Ljava/util/concurrent/ExecutorService;

    .line 8
    :cond_37
    monitor-exit p1
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_39

    .line 9
    throw p0

    :catchall_39
    move-exception p0

    .line 10
    :try_start_3a
    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method static bridge synthetic l(Lcom/google/android/gms/internal/ads/zzpf;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzpf;->M:Z

    return p0
.end method

.method private final m()J
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzou;->c:I

    if-nez v1, :cond_d

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->w:J

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzou;->b:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_f

    :cond_d
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->x:J

    :goto_f
    return-wide v1
.end method

.method private final n()J
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzou;->c:I

    if-nez v1, :cond_d

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->y:J

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzou;->d:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_f

    :cond_d
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->z:J

    :goto_f
    return-wide v1
.end method

.method private final o(Lcom/google/android/gms/internal/ads/zzou;)Landroid/media/AudioTrack;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzoe;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->s:Lcom/google/android/gms/internal/ads/zzk;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->O:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzou;->b(ZLcom/google/android/gms/internal/ads/zzk;I)Landroid/media/AudioTrack;

    move-result-object p1
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzoe; {:try_start_1 .. :try_end_9} :catch_a

    return-object p1

    :catch_a
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->n:Lcom/google/android/gms/internal/ads/zzof;

    if-nez v0, :cond_10

    goto :goto_13

    .line 2
    :cond_10
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzof;->a(Ljava/lang/Exception;)V

    .line 3
    :goto_13
    throw p1
.end method

.method private final p()Lcom/google/android/gms/internal/ads/zzox;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->t:Lcom/google/android/gms/internal/ads/zzox;

    if-eqz v0, :cond_5

    goto :goto_18

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->h:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzox;

    goto :goto_18

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->u:Lcom/google/android/gms/internal/ads/zzox;

    :goto_18
    return-object v0
.end method

.method private final q(J)V
    .registers 14

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->C()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->U:Lcom/google/android/gms/internal/ads/zzov;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->p()Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzox;->a:Lcom/google/android/gms/internal/ads/zzby;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzov;->c(Lcom/google/android/gms/internal/ads/zzby;)Lcom/google/android/gms/internal/ads/zzby;

    goto :goto_14

    .line 4
    :cond_12
    sget-object v1, Lcom/google/android/gms/internal/ads/zzby;->d:Lcom/google/android/gms/internal/ads/zzby;

    :goto_14
    move-object v3, v1

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->C()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->U:Lcom/google/android/gms/internal/ads/zzov;

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->p()Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzox;->b:Z

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzov;->d(Z)Z

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->h:Ljava/util/ArrayDeque;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzox;

    const-wide/16 v4, 0x0

    .line 8
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->n()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzou;->a(J)J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v2, v10

    move v4, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzox;-><init>(Lcom/google/android/gms/internal/ads/zzby;ZJJLcom/google/android/gms/internal/ads/zzow;)V

    .line 10
    invoke-virtual {v0, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->x()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->n:Lcom/google/android/gms/internal/ads/zzof;

    if-eqz p1, :cond_57

    check-cast p1, Lcom/google/android/gms/internal/ads/zzpk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzpk;->a:Lcom/google/android/gms/internal/ads/zzpl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzpl;->L0(Lcom/google/android/gms/internal/ads/zzpl;)Lcom/google/android/gms/internal/ads/zzob;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzob;->s(Z)V

    :cond_57
    return-void
.end method

.method private final r()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->L:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->L:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->g:Lcom/google/android/gms/internal/ads/zzom;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzom;->c(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_15
    return-void
.end method

.method private final s(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzoh;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->q:Lcom/google/android/gms/internal/ads/zzdb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdb;->h()Z

    move-result v0

    if-eqz v0, :cond_3a

    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->q:Lcom/google/android/gms/internal/ads/zzdb;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdb;->g()Z

    move-result v0

    if-nez v0, :cond_39

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->q:Lcom/google/android/gms/internal/ads/zzdb;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdb;->b()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 4
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzpf;->y(Ljava/nio/ByteBuffer;J)V

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->F:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_39

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_39

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->q:Lcom/google/android/gms/internal/ads/zzdb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->F:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdb;->e(Ljava/nio/ByteBuffer;)V

    goto :goto_8

    :cond_39
    :goto_39
    return-void

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->F:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_40

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzde;->a:Ljava/nio/ByteBuffer;

    :cond_40
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzpf;->y(Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method private final u(Lcom/google/android/gms/internal/ads/zzby;Z)V
    .registers 12

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->p()Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzox;->a:Lcom/google/android/gms/internal/ads/zzby;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzby;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzox;->b:Z

    if-eq p2, v0, :cond_11

    goto :goto_12

    :cond_11
    return-void

    :cond_12
    :goto_12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzox;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-wide v4, v6

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzox;-><init>(Lcom/google/android/gms/internal/ads/zzby;ZJJLcom/google/android/gms/internal/ads/zzow;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->A()Z

    move-result p1

    if-eqz p1, :cond_2a

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->t:Lcom/google/android/gms/internal/ads/zzox;

    return-void

    :cond_2a
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->u:Lcom/google/android/gms/internal/ads/zzox;

    return-void
.end method

.method private final w()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->A()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->E:F

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->E:F

    .line 3
    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private final x()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzou;->i:Lcom/google/android/gms/internal/ads/zzdb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->q:Lcom/google/android/gms/internal/ads/zzdb;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdb;->c()V

    return-void
.end method

.method private final y(Ljava/nio/ByteBuffer;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzoh;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    :cond_7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpf;->H:Ljava/nio/ByteBuffer;

    const/16 p3, 0x15

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_18

    if-ne p2, p1, :cond_13

    const/4 p2, 0x1

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    .line 2
    :goto_14
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    goto :goto_3b

    .line 3
    :cond_18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->H:Ljava/nio/ByteBuffer;

    .line 4
    sget p2, Lcom/google/android/gms/internal/ads/zzew;->a:I

    if-ge p2, p3, :cond_3b

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->I:[B

    if-eqz v2, :cond_29

    array-length v2, v2

    if-ge v2, p2, :cond_2d

    .line 6
    :cond_29
    new-array v2, p2, [B

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->I:[B

    .line 7
    :cond_2d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpf;->I:[B

    .line 8
    invoke-virtual {p1, v3, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->J:I

    .line 10
    :cond_3b
    :goto_3b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    .line 11
    sget v2, Lcom/google/android/gms/internal/ads/zzew;->a:I

    if-ge v2, p3, :cond_6d

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzpf;->g:Lcom/google/android/gms/internal/ads/zzom;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzpf;->y:J

    .line 12
    invoke-virtual {p3, v3, v4}, Lcom/google/android/gms/internal/ads/zzom;->a(J)I

    move-result p3

    if-lez p3, :cond_6b

    .line 13
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpf;->I:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpf;->J:I

    .line 14
    invoke-virtual {v3, v4, v5, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result p3

    if-lez p3, :cond_73

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpf;->J:I

    add-int/2addr v3, p3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzpf;->J:I

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_73

    :cond_6b
    const/4 p3, 0x0

    goto :goto_73

    .line 16
    :cond_6d
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    .line 17
    invoke-virtual {p3, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p3

    .line 18
    :cond_73
    :goto_73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzpf;->R:J

    const-wide/16 v3, 0x0

    if-gez p3, :cond_ab

    const/16 p1, 0x18

    if-lt v2, p1, :cond_84

    const/4 p1, -0x6

    if-eq p3, p1, :cond_88

    :cond_84
    const/16 p1, -0x20

    if-ne p3, p1, :cond_8f

    :cond_88
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->z:J

    cmp-long v2, p1, v3

    if-lez v2, :cond_8f

    goto :goto_90

    :cond_8f
    const/4 v0, 0x0

    :goto_90
    new-instance p1, Lcom/google/android/gms/internal/ads/zzoh;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    .line 19
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzou;->a:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-direct {p1, p3, p2, v0}, Lcom/google/android/gms/internal/ads/zzoh;-><init>(ILcom/google/android/gms/internal/ads/zzaf;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpf;->n:Lcom/google/android/gms/internal/ads/zzof;

    if-eqz p2, :cond_a0

    .line 20
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzof;->a(Ljava/lang/Exception;)V

    :cond_a0
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzoh;->p:Z

    if-nez p2, :cond_aa

    .line 21
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpf;->k:Lcom/google/android/gms/internal/ads/zzoy;

    .line 22
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzoy;->b(Ljava/lang/Exception;)V

    return-void

    .line 23
    :cond_aa
    throw p1

    .line 24
    :cond_ab
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->k:Lcom/google/android/gms/internal/ads/zzoy;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzoy;->a()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    .line 26
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzpf;->B(Landroid/media/AudioTrack;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzpf;->z:J

    cmp-long v2, v5, v3

    if-lez v2, :cond_c0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->T:Z

    :cond_c0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->M:Z

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->n:Lcom/google/android/gms/internal/ads/zzof;

    if-eqz v2, :cond_df

    if-ge p3, p2, :cond_df

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzpf;->T:Z

    if-nez v3, :cond_df

    check-cast v2, Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpk;->a:Lcom/google/android/gms/internal/ads/zzpl;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzpl;->K0(Lcom/google/android/gms/internal/ads/zzpl;)Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v3

    if-eqz v3, :cond_df

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzpl;->K0(Lcom/google/android/gms/internal/ads/zzpl;)Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    .line 27
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzkm;->zza()V

    :cond_df
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    .line 28
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzou;->c:I

    if-nez v2, :cond_eb

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzpf;->y:J

    int-to-long v5, p3

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzpf;->y:J

    :cond_eb
    if-ne p3, p2, :cond_108

    if-eqz v2, :cond_105

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpf;->F:Ljava/nio/ByteBuffer;

    if-ne p1, p2, :cond_f4

    goto :goto_f5

    :cond_f4
    const/4 v0, 0x0

    .line 29
    :goto_f5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->z:J

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzpf;->A:I

    int-to-long v0, p3

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzpf;->G:I

    int-to-long v2, p3

    mul-long v0, v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->z:J

    :cond_105
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->H:Ljava/nio/ByteBuffer;

    :cond_108
    return-void
.end method

.method private final z()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzoh;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->q:Lcom/google/android/gms/internal/ads/zzdb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdb;->h()Z

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->H:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_11

    return v4

    .line 2
    :cond_11
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzpf;->y(Ljava/nio/ByteBuffer;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->H:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_19

    return v4

    :cond_19
    return v3

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->q:Lcom/google/android/gms/internal/ads/zzdb;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdb;->d()V

    .line 4
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzpf;->s(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->q:Lcom/google/android/gms/internal/ads/zzdb;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdb;->g()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->H:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_36

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_37

    :cond_35
    return v4

    :cond_36
    const/4 v3, 0x1

    :cond_37
    :goto_37
    return v3
.end method


# virtual methods
.method public final M0(Z)J
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->A()Z

    move-result v0

    if-eqz v0, :cond_92

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->C:Z

    if-eqz v0, :cond_c

    goto/16 :goto_92

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->g:Lcom/google/android/gms/internal/ads/zzom;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzom;->b(Z)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->n()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzou;->a(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->h:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_41

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->h:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzox;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzox;->d:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_41

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->h:Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzox;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->u:Lcom/google/android/gms/internal/ads/zzox;

    goto :goto_20

    :cond_41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->u:Lcom/google/android/gms/internal/ads/zzox;

    .line 6
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzox;->d:J

    sub-long v2, v0, v2

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzox;->a:Lcom/google/android/gms/internal/ads/zzby;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzby;->d:Lcom/google/android/gms/internal/ads/zzby;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzby;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->u:Lcom/google/android/gms/internal/ads/zzox;

    .line 8
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzox;->c:J

    add-long/2addr v0, v2

    goto :goto_84

    .line 9
    :cond_57
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->h:Ljava/util/ArrayDeque;

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->U:Lcom/google/android/gms/internal/ads/zzov;

    .line 11
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzov;->a(J)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->u:Lcom/google/android/gms/internal/ads/zzox;

    .line 12
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzox;->c:J

    add-long/2addr v0, v2

    goto :goto_84

    :cond_6b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->h:Ljava/util/ArrayDeque;

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzox;

    .line 14
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzox;->d:J

    sub-long/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->u:Lcom/google/android/gms/internal/ads/zzox;

    .line 15
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzox;->a:Lcom/google/android/gms/internal/ads/zzby;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzby;->a:F

    .line 16
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzew;->d0(JF)J

    move-result-wide v0

    .line 17
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzox;->c:J

    sub-long v0, v2, v0

    .line 18
    :goto_84
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->U:Lcom/google/android/gms/internal/ads/zzov;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzov;->b()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzou;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_92
    :goto_92
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final N0(Lcom/google/android/gms/internal/ads/zzaf;)I
    .registers 5

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_34

    .line 2
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzaf;->A:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->w(I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 3
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->A:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PCM encoding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultAudioSink"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 4
    :cond_2d
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->A:I

    if-eq p1, v2, :cond_33

    const/4 p1, 0x1

    return p1

    :cond_33
    return v2

    :cond_34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->S:Z

    if-nez v0, :cond_3a

    .line 5
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->a:Lcom/google/android/gms/internal/ads/zznq;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zznq;->a(Lcom/google/android/gms/internal/ads/zzaf;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_43

    return v2

    :cond_43
    return v1
.end method

.method public final O0(Ljava/nio/ByteBuffer;JI)Z
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzoe;,
            Lcom/google/android/gms/internal/ads/zzoh;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->F:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_13

    if-ne v2, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->o:Lcom/google/android/gms/internal/ads/zzou;

    const/4 v8, 0x0

    if-eqz v0, :cond_7f

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpf;->z()Z

    move-result v0

    if-nez v0, :cond_23

    return v6

    :cond_23
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->o:Lcom/google/android/gms/internal/ads/zzou;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    .line 3
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzou;->c:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzou;->c:I

    if-ne v10, v11, :cond_6f

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzou;->g:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzou;->g:I

    if-ne v10, v11, :cond_6f

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzou;->e:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzou;->e:I

    if-ne v10, v11, :cond_6f

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzou;->f:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzou;->f:I

    if-ne v10, v11, :cond_6f

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzou;->d:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzou;->d:I

    if-ne v9, v10, :cond_6f

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzpf;->o:Lcom/google/android/gms/internal/ads/zzou;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpf;->B(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    .line 5
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v9, 0x3

    if-ne v0, v9, :cond_5f

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    .line 6
    invoke-virtual {v0}, Landroid/media/AudioTrack;->setOffloadEndOfStream()V

    :cond_5f
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    .line 7
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzou;->a:Lcom/google/android/gms/internal/ads/zzaf;

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzaf;->B:I

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzaf;->C:I

    invoke-virtual {v0, v10, v9}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzpf;->T:Z

    goto :goto_7c

    .line 8
    :cond_6f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpf;->r()V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpf;->v()Z

    move-result v0

    if-eqz v0, :cond_79

    return v6

    .line 10
    :cond_79
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpf;->b()V

    .line 11
    :cond_7c
    :goto_7c
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzpf;->q(J)V

    :cond_7f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpf;->A()Z

    move-result v0

    const/16 v9, 0x1f

    if-eqz v0, :cond_89

    goto/16 :goto_13e

    .line 12
    :cond_89
    :try_start_89
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->f:Lcom/google/android/gms/internal/ads/zzdo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdo;->d()Z

    move-result v0
    :try_end_8f
    .catch Lcom/google/android/gms/internal/ads/zzoe; {:try_start_89 .. :try_end_8f} :catch_398

    if-nez v0, :cond_92

    return v6

    :cond_92
    :try_start_92
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;
    :try_end_94
    .catch Lcom/google/android/gms/internal/ads/zzoe; {:try_start_92 .. :try_end_94} :catch_9c

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :try_start_97
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzpf;->o(Lcom/google/android/gms/internal/ads/zzou;)Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_9b
    .catch Lcom/google/android/gms/internal/ads/zzoe; {:try_start_97 .. :try_end_9b} :catch_9c

    goto :goto_d4

    :catch_9c
    move-exception v0

    move-object v11, v0

    .line 15
    :try_start_9e
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    .line 16
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzou;->h:I

    const v13, 0xf4240

    if-le v12, v13, :cond_38c

    new-instance v12, Lcom/google/android/gms/internal/ads/zzou;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzou;->a:Lcom/google/android/gms/internal/ads/zzaf;

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzou;->b:I

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzou;->c:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzou;->d:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzou;->e:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzou;->f:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzou;->g:I

    const v22, 0xf4240

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzou;->i:Lcom/google/android/gms/internal/ads/zzdb;

    move/from16 v17, v14

    move-object v14, v12

    move/from16 v16, v13

    move/from16 v18, v8

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v10

    move-object/from16 v23, v0

    invoke-direct/range {v14 .. v23}, Lcom/google/android/gms/internal/ads/zzou;-><init>(Lcom/google/android/gms/internal/ads/zzaf;IIIIIIILcom/google/android/gms/internal/ads/zzdb;)V
    :try_end_ce
    .catch Lcom/google/android/gms/internal/ads/zzoe; {:try_start_9e .. :try_end_ce} :catch_398

    .line 17
    :try_start_ce
    invoke-direct {v1, v12}, Lcom/google/android/gms/internal/ads/zzpf;->o(Lcom/google/android/gms/internal/ads/zzou;)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v12, v1, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;
    :try_end_d4
    .catch Lcom/google/android/gms/internal/ads/zzoe; {:try_start_ce .. :try_end_d4} :catch_374

    .line 18
    :goto_d4
    :try_start_d4
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpf;->B(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_fb

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->i:Lcom/google/android/gms/internal/ads/zzpd;

    if-nez v6, :cond_e9

    new-instance v6, Lcom/google/android/gms/internal/ads/zzpd;

    .line 20
    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zzpd;-><init>(Lcom/google/android/gms/internal/ads/zzpf;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->i:Lcom/google/android/gms/internal/ads/zzpd;

    :cond_e9
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->i:Lcom/google/android/gms/internal/ads/zzpd;

    .line 21
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzpd;->a(Landroid/media/AudioTrack;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    .line 22
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzou;->a:Lcom/google/android/gms/internal/ads/zzaf;

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzaf;->B:I

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzaf;->C:I

    invoke-virtual {v0, v7, v6}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    .line 23
    :cond_fb
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    if-lt v0, v9, :cond_108

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->m:Lcom/google/android/gms/internal/ads/zzno;

    if-eqz v6, :cond_108

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    .line 24
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zzoq;->a(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzno;)V

    :cond_108
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    .line 25
    invoke-virtual {v6}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v6

    iput v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->O:I

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzpf;->g:Lcom/google/android/gms/internal/ads/zzom;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    .line 26
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzou;->c:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_11d

    const/4 v12, 0x1

    goto :goto_11e

    :cond_11d
    const/4 v12, 0x0

    :goto_11e
    iget v13, v6, Lcom/google/android/gms/internal/ads/zzou;->g:I

    iget v14, v6, Lcom/google/android/gms/internal/ads/zzou;->d:I

    iget v15, v6, Lcom/google/android/gms/internal/ads/zzou;->h:I

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzom;->e(Landroid/media/AudioTrack;ZIII)V

    .line 27
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpf;->w()V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->P:Lcom/google/android/gms/internal/ads/zzl;

    .line 28
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzl;->a:I

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->Q:Lcom/google/android/gms/internal/ads/zzor;

    if-eqz v6, :cond_13b

    const/16 v7, 0x17

    if-lt v0, v7, :cond_13b

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    .line 29
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzop;->a(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzor;)V

    :cond_13b
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->C:Z
    :try_end_13e
    .catch Lcom/google/android/gms/internal/ads/zzoe; {:try_start_d4 .. :try_end_13e} :catch_398

    .line 30
    :goto_13e
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->j:Lcom/google/android/gms/internal/ads/zzoy;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoy;->a()V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->C:Z

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_15e

    .line 32
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzpf;->D:J

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzpf;->B:Z

    iput-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzpf;->C:Z

    .line 33
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzpf;->q(J)V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->M:Z

    if-eqz v0, :cond_15e

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpf;->f()V

    :cond_15e
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->g:Lcom/google/android/gms/internal/ads/zzom;

    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpf;->n()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/internal/ads/zzom;->j(J)Z

    move-result v0

    if-nez v0, :cond_16c

    const/4 v8, 0x0

    return v8

    :cond_16c
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->F:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_347

    .line 36
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v8, :cond_17a

    const/4 v0, 0x1

    goto :goto_17b

    :cond_17a
    const/4 v0, 0x0

    :goto_17b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    .line 37
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_186

    const/4 v8, 0x1

    return v8

    :cond_186
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    .line 38
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzou;->c:I

    if-eqz v8, :cond_2b3

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzpf;->A:I

    if-nez v8, :cond_2b3

    .line 39
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzou;->g:I

    const/16 v8, 0x400

    const/4 v10, -0x2

    const/16 v11, 0x10

    const/4 v12, -0x1

    packed-switch v0, :pswitch_data_3a8

    .line 40
    :pswitch_19b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected audio encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :pswitch_1b2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaas;->a(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto/16 :goto_23a

    .line 43
    :pswitch_1b8
    sget v0, Lcom/google/android/gms/internal/ads/zzyy;->b:I

    new-array v0, v11, [B

    .line 44
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 45
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 46
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzem;

    invoke-direct {v8, v0, v11}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    .line 47
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzyy;->a(Lcom/google/android/gms/internal/ads/zzem;)Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzyx;->c:I

    goto/16 :goto_23a

    :pswitch_1d3
    const/16 v0, 0x200

    goto :goto_23a

    .line 48
    :pswitch_1d6
    sget v0, Lcom/google/android/gms/internal/ads/zzyv;->g:I

    .line 49
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 50
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    add-int/lit8 v8, v8, -0xa

    move v9, v0

    :goto_1e3
    if-gt v9, v8, :cond_1f6

    add-int/lit8 v13, v9, 0x4

    .line 51
    invoke-static {v2, v13}, Lcom/google/android/gms/internal/ads/zzew;->V(Ljava/nio/ByteBuffer;I)I

    move-result v13

    and-int/2addr v13, v10

    const v14, -0x78d9046

    if-ne v13, v14, :cond_1f3

    sub-int/2addr v9, v0

    goto :goto_1f7

    :cond_1f3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1e3

    :cond_1f6
    const/4 v9, -0x1

    :goto_1f7
    if-ne v9, v12, :cond_1fb

    const/4 v0, 0x0

    goto :goto_23a

    .line 52
    :cond_1fb
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v9

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 53
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v9

    const/16 v9, 0xbb

    if-ne v0, v9, :cond_214

    const/16 v0, 0x9

    goto :goto_216

    :cond_214
    const/16 v0, 0x8

    :goto_216
    const/16 v9, 0x28

    add-int/2addr v8, v0

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v9, v0

    mul-int/lit8 v0, v0, 0x10

    goto :goto_23a

    :pswitch_226
    const/16 v0, 0x800

    goto :goto_23a

    :pswitch_229
    const/16 v0, 0x400

    goto :goto_23a

    .line 54
    :pswitch_22c
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzew;->V(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 55
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaao;->c(I)I

    move-result v0

    if-eq v0, v12, :cond_23c

    :goto_23a
    const/4 v10, 0x1

    goto :goto_2ad

    .line 56
    :cond_23c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 57
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 58
    :pswitch_242
    sget v0, Lcom/google/android/gms/internal/ads/zzzr;->d:I

    .line 59
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 60
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    if-eq v8, v10, :cond_28f

    if-eq v8, v12, :cond_278

    if-eq v8, v9, :cond_266

    add-int/lit8 v8, v0, 0x4

    .line 61
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    const/4 v9, 0x1

    and-int/2addr v8, v9

    shl-int/lit8 v8, v8, 0x6

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xfc

    const/4 v9, 0x2

    goto :goto_28b

    :cond_266
    const/4 v9, 0x2

    add-int/lit8 v8, v0, 0x5

    .line 62
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    goto :goto_289

    :cond_278
    const/4 v9, 0x2

    add-int/lit8 v8, v0, 0x4

    .line 63
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    :goto_289
    and-int/lit8 v0, v0, 0x3c

    :goto_28b
    shr-int/2addr v0, v9

    or-int/2addr v0, v8

    const/4 v10, 0x1

    goto :goto_2a4

    :cond_28f
    const/4 v9, 0x2

    add-int/lit8 v8, v0, 0x5

    .line 64
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    const/4 v10, 0x1

    and-int/2addr v8, v10

    shl-int/lit8 v8, v8, 0x6

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xfc

    shr-int/2addr v0, v9

    or-int/2addr v0, v8

    :goto_2a4
    add-int/2addr v0, v10

    mul-int/lit8 v0, v0, 0x20

    goto :goto_2ad

    :pswitch_2a8
    const/4 v10, 0x1

    .line 65
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzyv;->a(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 66
    :goto_2ad
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->A:I

    if-eqz v0, :cond_2b2

    goto :goto_2b3

    :cond_2b2
    return v10

    :cond_2b3
    :goto_2b3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->t:Lcom/google/android/gms/internal/ads/zzox;

    if-eqz v0, :cond_2c5

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpf;->z()Z

    move-result v0

    if-nez v0, :cond_2bf

    const/4 v8, 0x0

    return v8

    .line 68
    :cond_2bf
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzpf;->q(J)V

    const/4 v8, 0x0

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzpf;->t:Lcom/google/android/gms/internal/ads/zzox;

    :cond_2c5
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzpf;->D:J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpf;->m()J

    move-result-wide v10

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzpf;->c:Lcom/google/android/gms/internal/ads/zzpo;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpo;->n()J

    move-result-wide v12

    sub-long/2addr v10, v12

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzou;->a:Lcom/google/android/gms/internal/ads/zzaf;

    .line 70
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    int-to-long v12, v0

    const-wide/32 v14, 0xf4240

    mul-long v10, v10, v14

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->B:Z

    if-nez v0, :cond_300

    sub-long v10, v8, v3

    .line 71
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x30d40

    cmp-long v0, v10, v12

    if-lez v0, :cond_300

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->n:Lcom/google/android/gms/internal/ads/zzof;

    if-eqz v0, :cond_2fd

    new-instance v10, Lcom/google/android/gms/internal/ads/zzog;

    .line 72
    invoke-direct {v10, v3, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zzog;-><init>(JJ)V

    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/ads/zzof;->a(Ljava/lang/Exception;)V

    :cond_2fd
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzpf;->B:Z

    :cond_300
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->B:Z

    if-eqz v0, :cond_327

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpf;->z()Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_30c

    return v10

    :cond_30c
    sub-long v8, v3, v8

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzpf;->D:J

    add-long/2addr v11, v8

    iput-wide v11, v1, Lcom/google/android/gms/internal/ads/zzpf;->D:J

    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzpf;->B:Z

    .line 74
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzpf;->q(J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->n:Lcom/google/android/gms/internal/ads/zzof;

    if-eqz v0, :cond_327

    cmp-long v10, v8, v6

    if-eqz v10, :cond_327

    check-cast v0, Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzpk;->a:Lcom/google/android/gms/internal/ads/zzpl;

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpl;->l0()V

    :cond_327
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    .line 76
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzou;->c:I

    if-nez v0, :cond_338

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->w:J

    .line 77
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->w:J

    goto :goto_343

    .line 78
    :cond_338
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->x:J

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->A:I

    int-to-long v8, v0

    int-to-long v10, v5

    mul-long v8, v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->x:J

    .line 79
    :goto_343
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzpf;->F:Ljava/nio/ByteBuffer;

    iput v5, v1, Lcom/google/android/gms/internal/ads/zzpf;->G:I

    .line 80
    :cond_347
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzpf;->s(J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->F:Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_35a

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzpf;->F:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzpf;->G:I

    const/4 v3, 0x1

    return v3

    :cond_35a
    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->g:Lcom/google/android/gms/internal/ads/zzom;

    .line 82
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpf;->n()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzom;->i(J)Z

    move-result v0

    if-eqz v0, :cond_373

    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio track"

    .line 83
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpf;->b()V

    return v3

    :cond_373
    return v2

    :catch_374
    move-exception v0

    .line 85
    :try_start_375
    const-class v2, Ljava/lang/Throwable;

    const-string v3, "addSuppressed"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 86
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-virtual {v2, v11, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38c
    .catch Ljava/lang/Exception; {:try_start_375 .. :try_end_38c} :catch_38c

    .line 87
    :catch_38c
    :cond_38c
    :try_start_38c
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    .line 88
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzou;->c()Z

    move-result v0

    if-eqz v0, :cond_397

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzpf;->S:Z

    .line 89
    :cond_397
    throw v11
    :try_end_398
    .catch Lcom/google/android/gms/internal/ads/zzoe; {:try_start_38c .. :try_end_398} :catch_398

    :catch_398
    move-exception v0

    .line 90
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzoe;->p:Z

    if-nez v2, :cond_3a4

    .line 91
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzpf;->j:Lcom/google/android/gms/internal/ads/zzoy;

    .line 92
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzoy;->b(Ljava/lang/Exception;)V

    const/4 v2, 0x0

    return v2

    .line 93
    :cond_3a4
    goto :goto_3a6

    :goto_3a5
    throw v0

    :goto_3a6
    goto :goto_3a5

    nop

    :pswitch_data_3a8
    .packed-switch 0x5
        :pswitch_2a8
        :pswitch_2a8
        :pswitch_242
        :pswitch_242
        :pswitch_22c
        :pswitch_229
        :pswitch_226
        :pswitch_226
        :pswitch_19b
        :pswitch_1d6
        :pswitch_1d3
        :pswitch_229
        :pswitch_1b8
        :pswitch_2a8
        :pswitch_19b
        :pswitch_1b2
    .end packed-switch
.end method

.method public final P0(Lcom/google/android/gms/internal/ads/zzaf;I[I)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzod;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    .line 1
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x8

    const/4 v5, -0x1

    if-eqz v0, :cond_98

    .line 2
    iget v0, v3, Lcom/google/android/gms/internal/ads/zzaf;->A:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->w(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    .line 3
    iget v0, v3, Lcom/google/android/gms/internal/ads/zzaf;->A:I

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzew;->Z(II)I

    move-result v0

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfqh;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzfqh;-><init>()V

    .line 4
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzpf;->d:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 5
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzfqh;->i(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfqh;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzpf;->U:Lcom/google/android/gms/internal/ads/zzov;

    .line 6
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzov;->e()[Lcom/google/android/gms/internal/ads/zzde;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzfqh;->h([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqh;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdb;

    .line 7
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfqh;->j()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/zzdb;-><init>(Lcom/google/android/gms/internal/ads/zzfqk;)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->q:Lcom/google/android/gms/internal/ads/zzdb;

    .line 8
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzdb;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzpf;->q:Lcom/google/android/gms/internal/ads/zzdb;

    :cond_48
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->c:Lcom/google/android/gms/internal/ads/zzpo;

    .line 9
    iget v8, v3, Lcom/google/android/gms/internal/ads/zzaf;->B:I

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzaf;->C:I

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzpo;->p(II)V

    sget v6, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v8, 0x15

    if-ge v6, v8, :cond_68

    .line 10
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    if-ne v6, v2, :cond_68

    if-nez p3, :cond_68

    const/4 v6, 0x6

    new-array v8, v6, [I

    const/4 v9, 0x0

    :goto_61
    if-ge v9, v6, :cond_6a

    .line 11
    aput v9, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_61

    :cond_68
    move-object/from16 v8, p3

    :cond_6a
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->b:Lcom/google/android/gms/internal/ads/zzon;

    .line 12
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzon;->n([I)V

    .line 13
    new-instance v6, Lcom/google/android/gms/internal/ads/zzdc;

    iget v8, v3, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzaf;->A:I

    invoke-direct {v6, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzdc;-><init>(III)V

    .line 14
    :try_start_7a
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzdb;->a(Lcom/google/android/gms/internal/ads/zzdc;)Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v6
    :try_end_7e
    .catch Lcom/google/android/gms/internal/ads/zzdd; {:try_start_7a .. :try_end_7e} :catch_90

    .line 15
    iget v8, v6, Lcom/google/android/gms/internal/ads/zzdc;->c:I

    .line 16
    iget v9, v6, Lcom/google/android/gms/internal/ads/zzdc;->a:I

    .line 17
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzdc;->b:I

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzew;->U(I)I

    move-result v10

    .line 18
    invoke-static {v8, v6}, Lcom/google/android/gms/internal/ads/zzew;->Z(II)I

    move-result v6

    move-object v11, v7

    move v7, v9

    const/4 v9, 0x0

    goto :goto_c3

    :catch_90
    move-exception v0

    move-object v2, v0

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzod;

    .line 20
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzod;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;)V

    throw v0

    .line 21
    :cond_98
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdb;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->u()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzdb;-><init>(Lcom/google/android/gms/internal/ads/zzfqk;)V

    .line 23
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    .line 24
    sget v7, Lcom/google/android/gms/internal/ads/zzew;->a:I

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzpf;->a:Lcom/google/android/gms/internal/ads/zznq;

    .line 25
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zznq;->a(Lcom/google/android/gms/internal/ads/zzaf;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_1a0

    .line 26
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 27
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x2

    move-object v11, v0

    move v10, v7

    const/4 v0, -0x1

    move v7, v6

    const/4 v6, -0x1

    :goto_c3
    const-string v12, ") for: "

    if-eqz v8, :cond_17f

    if-eqz v10, :cond_15e

    .line 28
    invoke-static {v7, v10, v8}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v12

    const/4 v13, -0x2

    const/4 v14, 0x1

    if-eq v12, v13, :cond_d3

    const/4 v13, 0x1

    goto :goto_d4

    :cond_d3
    const/4 v13, 0x0

    .line 29
    :goto_d4
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    if-eq v6, v5, :cond_db

    move v13, v6

    goto :goto_dc

    :cond_db
    const/4 v13, 0x1

    .line 30
    :goto_dc
    iget v15, v3, Lcom/google/android/gms/internal/ads/zzaf;->h:I

    const v4, 0x3d090

    if-eqz v9, :cond_120

    const-wide/32 v16, 0xf4240

    if-eq v9, v14, :cond_10d

    const/4 v14, 0x5

    if-ne v8, v14, :cond_f0

    const v4, 0x7a120

    const/4 v8, 0x5

    goto :goto_f1

    :cond_f0
    move v14, v8

    :goto_f1
    if-eq v15, v5, :cond_fa

    sget-object v8, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 31
    invoke-static {v15, v2, v8}, Lcom/google/android/gms/internal/ads/zzfsp;->a(IILjava/math/RoundingMode;)I

    move-result v2

    goto :goto_fe

    .line 32
    :cond_fa
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzph;->b(I)I

    move-result v2

    :goto_fe
    move/from16 p3, v6

    int-to-long v5, v4

    move v4, v14

    int-to-long v14, v2

    mul-long v5, v5, v14

    .line 33
    div-long v5, v5, v16

    .line 34
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzfsr;->a(J)I

    move-result v2

    move v14, v4

    goto :goto_134

    :cond_10d
    move/from16 p3, v6

    .line 35
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzph;->b(I)I

    move-result v2

    int-to-long v4, v2

    const-wide/32 v14, 0x2faf080

    mul-long v4, v4, v14

    div-long v4, v4, v16

    .line 36
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzfsr;->a(J)I

    move-result v2

    goto :goto_133

    :cond_120
    move/from16 p3, v6

    mul-int/lit8 v2, v12, 0x4

    .line 37
    invoke-static {v4, v7, v13}, Lcom/google/android/gms/internal/ads/zzph;->a(III)I

    move-result v4

    const v5, 0xb71b0

    .line 38
    invoke-static {v5, v7, v13}, Lcom/google/android/gms/internal/ads/zzph;->a(III)I

    move-result v5

    .line 39
    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzew;->Q(III)I

    move-result v2

    :goto_133
    move v14, v8

    :goto_134
    int-to-double v4, v2

    double-to-int v2, v4

    .line 40
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v13

    const/4 v4, -0x1

    add-int/2addr v2, v4

    .line 41
    div-int/2addr v2, v13

    mul-int v12, v2, v13

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzpf;->S:Z

    new-instance v13, Lcom/google/android/gms/internal/ads/zzou;

    move-object v2, v13

    move-object/from16 v3, p1

    move v4, v0

    move v5, v9

    move/from16 v6, p3

    move v8, v10

    move v9, v14

    move v10, v12

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzou;-><init>(Lcom/google/android/gms/internal/ads/zzaf;IIIIIIILcom/google/android/gms/internal/ads/zzdb;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpf;->A()Z

    move-result v0

    if-eqz v0, :cond_15b

    iput-object v13, v1, Lcom/google/android/gms/internal/ads/zzpf;->o:Lcom/google/android/gms/internal/ads/zzou;

    return-void

    :cond_15b
    iput-object v13, v1, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    return-void

    .line 42
    :cond_15e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzod;

    .line 43
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid output channel config (mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzod;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaf;)V

    throw v0

    .line 44
    :cond_17f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzod;

    .line 45
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid output encoding (mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzod;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaf;)V

    throw v0

    .line 46
    :cond_1a0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzod;

    .line 47
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Unable to configure passthrough for: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzod;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaf;)V

    goto :goto_1b1

    :goto_1b0
    throw v0

    :goto_1b1
    goto :goto_1b0
.end method

.method public final Q0(Lcom/google/android/gms/internal/ads/zzaf;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->N0(Lcom/google/android/gms/internal/ads/zzaf;)I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public final R0(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->O:I

    if-eq v0, p1, :cond_10

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->O:I

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->N:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpf;->b()V

    :cond_10
    return-void
.end method

.method public final S0(Lcom/google/android/gms/internal/ads/zzk;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->s:Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzk;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->s:Lcom/google/android/gms/internal/ads/zzk;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpf;->b()V

    return-void
.end method

.method public final T0(Lcom/google/android/gms/internal/ads/zzno;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->m:Lcom/google/android/gms/internal/ads/zzno;

    return-void
.end method

.method public final U0(Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->p()Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzox;->a:Lcom/google/android/gms/internal/ads/zzby;

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->u(Lcom/google/android/gms/internal/ads/zzby;Z)V

    return-void
.end method

.method public final V0(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->E:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->E:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->w()V

    :cond_b
    return-void
.end method

.method public final W0(Lcom/google/android/gms/internal/ads/zzof;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->n:Lcom/google/android/gms/internal/ads/zzof;

    return-void
.end method

.method public final X0(Landroid/media/AudioDeviceInfo;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    .line 1
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzor;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzor;-><init>(Landroid/media/AudioDeviceInfo;)V

    move-object p1, v0

    .line 3
    :goto_a
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->Q:Lcom/google/android/gms/internal/ads/zzor;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    if-eqz v0, :cond_13

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzop;->a(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzor;)V

    :cond_13
    return-void
.end method

.method public final Y0(Lcom/google/android/gms/internal/ads/zzl;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->P:Lcom/google/android/gms/internal/ads/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2
    :cond_9
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzl;->a:I

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->P:Lcom/google/android/gms/internal/ads/zzl;

    .line 4
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzl;->a:I

    :cond_13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->P:Lcom/google/android/gms/internal/ads/zzl;

    return-void
.end method

.method public final Z0(Lcom/google/android/gms/internal/ads/zzby;)V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzby;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzby;->a:F

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x41000000    # 8.0f

    .line 2
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzew;->A(FFF)F

    move-result v1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzby;->b:F

    .line 3
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzew;->A(FFF)F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzby;-><init>(FF)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->p()Lcom/google/android/gms/internal/ads/zzox;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzox;->b:Z

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->u(Lcom/google/android/gms/internal/ads/zzby;Z)V

    return-void
.end method

.method public final a()Lcom/google/android/gms/internal/ads/zzby;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->p()Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzox;->a:Lcom/google/android/gms/internal/ads/zzby;

    return-object v0
.end method

.method public final b()V
    .registers 13

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->A()Z

    move-result v0

    if-eqz v0, :cond_af

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->w:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->x:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->y:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->z:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->T:Z

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->A:I

    new-instance v11, Lcom/google/android/gms/internal/ads/zzox;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->p()Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzox;->a:Lcom/google/android/gms/internal/ads/zzby;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->p()Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v3

    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzox;->b:Z

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzox;-><init>(Lcom/google/android/gms/internal/ads/zzby;ZJJLcom/google/android/gms/internal/ads/zzow;)V

    iput-object v11, p0, Lcom/google/android/gms/internal/ads/zzpf;->u:Lcom/google/android/gms/internal/ads/zzox;

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->D:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->t:Lcom/google/android/gms/internal/ads/zzox;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->h:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->F:Ljava/nio/ByteBuffer;

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->G:I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->H:Ljava/nio/ByteBuffer;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->L:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->K:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->c:Lcom/google/android/gms/internal/ads/zzpo;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpo;->o()V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->x()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->g:Lcom/google/android/gms/internal/ads/zzom;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzom;->h()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    .line 7
    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    :cond_57
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzpf;->B(Landroid/media/AudioTrack;)Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->i:Lcom/google/android/gms/internal/ads/zzpd;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    .line 11
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzpd;->b(Landroid/media/AudioTrack;)V

    .line 12
    :cond_69
    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_75

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->N:Z

    if-nez v1, :cond_75

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->O:I

    :cond_75
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->o:Lcom/google/android/gms/internal/ads/zzou;

    if-eqz v1, :cond_7d

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->p:Lcom/google/android/gms/internal/ads/zzou;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->o:Lcom/google/android/gms/internal/ads/zzou;

    :cond_7d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->g:Lcom/google/android/gms/internal/ads/zzom;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzom;->d()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->f:Lcom/google/android/gms/internal/ads/zzdo;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdo;->c()Z

    sget-object v3, Lcom/google/android/gms/internal/ads/zzpf;->V:Ljava/lang/Object;

    monitor-enter v3

    :try_start_8c
    sget-object v4, Lcom/google/android/gms/internal/ads/zzpf;->W:Ljava/util/concurrent/ExecutorService;

    if-nez v4, :cond_98

    const-string v4, "ExoPlayer:AudioTrackReleaseThread"

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzew;->r(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/ads/zzpf;->W:Ljava/util/concurrent/ExecutorService;

    :cond_98
    sget v4, Lcom/google/android/gms/internal/ads/zzpf;->X:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/google/android/gms/internal/ads/zzpf;->X:I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzpf;->W:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzoo;

    invoke-direct {v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzoo;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzdo;)V

    .line 16
    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 17
    monitor-exit v3
    :try_end_a9
    .catchall {:try_start_8c .. :try_end_a9} :catchall_ac

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    goto :goto_af

    :catchall_ac
    move-exception v0

    :try_start_ad
    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v0

    :cond_af
    :goto_af
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->k:Lcom/google/android/gms/internal/ads/zzoy;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoy;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->j:Lcom/google/android/gms/internal/ads/zzoy;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoy;->a()V

    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->B:Z

    return-void
.end method

.method public final e()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->M:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->A()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->g:Lcom/google/android/gms/internal/ads/zzom;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzom;->k()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_16
    return-void
.end method

.method public final f()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->M:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->A()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->g:Lcom/google/android/gms/internal/ads/zzom;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzom;->f()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->r:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_13
    return-void
.end method

.method public final g()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzoh;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->K:Z

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->A()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->z()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->r()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->K:Z

    :cond_16
    return-void
.end method

.method public final h()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpf;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->d:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 2
    check-cast v4, Lcom/google/android/gms/internal/ads/zzde;

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzde;->c()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->e:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v1, :cond_2e

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Lcom/google/android/gms/internal/ads/zzde;

    .line 5
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzde;->c()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->q:Lcom/google/android/gms/internal/ads/zzdb;

    if-eqz v0, :cond_35

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdb;->f()V

    :cond_35
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->M:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->S:Z

    return-void
.end method

.method public final t()Z
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->A()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->K:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpf;->v()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    return v1

    :cond_14
    :goto_14
    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public final v()Z
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->A()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->g:Lcom/google/android/gms/internal/ads/zzom;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzom;->g(J)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzoo (com.google.android.gms.internal.ads.zzoo)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzoo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroid/media/AudioTrack;

.field public final synthetic p:Lcom/google/android/gms/internal/ads/zzdo;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzdo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->o:Landroid/media/AudioTrack;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzoo;->p:Lcom/google/android/gms/internal/ads/zzdo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->o:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoo;->p:Lcom/google/android/gms/internal/ads/zzdo;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzpf;->k(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzdo;)V

    return-void
.end method

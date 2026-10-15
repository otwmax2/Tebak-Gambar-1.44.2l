###### Class com.google.android.gms.internal.ads.zzgwf (com.google.android.gms.internal.ads.zzgwf)
.class public abstract Lcom/google/android/gms/internal/ads/zzgwf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamb;


# static fields
.field private static final x:Lcom/google/android/gms/internal/ads/zzgwq;


# instance fields
.field protected final o:Ljava/lang/String;

.field private p:Lcom/google/android/gms/internal/ads/zzamc;

.field q:Z

.field r:Z

.field private s:Ljava/nio/ByteBuffer;

.field t:J

.field u:J

.field v:Lcom/google/android/gms/internal/ads/zzgwk;

.field private w:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgwf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwq;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgwq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgwf;->x:Lcom/google/android/gms/internal/ads/zzgwq;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgwf;->u:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwf;->w:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwf;->o:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgwf;->r:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgwf;->q:Z

    return-void
.end method

.method private final declared-synchronized a()V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgwf;->r:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_39

    if-nez v0, :cond_37

    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwf;->x:Lcom/google/android/gms/internal/ads/zzgwq;

    const-string v1, "mem mapping "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgwf;->o:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    .line 2
    :cond_16
    new-instance v2, Ljava/lang/String;

    .line 3
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1c
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwq;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwf;->v:Lcom/google/android/gms/internal/ads/zzgwk;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgwf;->t:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgwf;->u:J

    .line 4
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgwk;->E3(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwf;->s:Ljava/nio/ByteBuffer;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2b} :catch_30
    .catchall {:try_start_5 .. :try_end_2b} :catchall_39

    const/4 v0, 0x1

    :try_start_2c
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgwf;->r:Z
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_39

    monitor-exit p0

    return-void

    :catch_30
    move-exception v0

    .line 5
    :try_start_31
    new-instance v1, Ljava/lang/RuntimeException;

    .line 6
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_39

    :cond_37
    monitor-exit p0

    return-void

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/zzgwk;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/zzaly;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgwk;->zzb()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgwf;->t:J

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzgwf;->u:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwf;->v:Lcom/google/android/gms/internal/ads/zzgwk;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgwk;->zzb()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgwk;->D(J)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgwf;->r:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgwf;->q:Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwf;->e()V

    return-void
.end method

.method protected abstract c(Ljava/nio/ByteBuffer;)V
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzamc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwf;->p:Lcom/google/android/gms/internal/ads/zzamc;

    return-void
.end method

.method public final declared-synchronized e()V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgwf;->a()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwf;->x:Lcom/google/android/gms/internal/ads/zzgwq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgwf;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "parsing details of "

    if-eqz v2, :cond_15

    .line 2
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    .line 3
    :cond_15
    new-instance v1, Ljava/lang/String;

    .line 4
    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1a
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwq;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwf;->s:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3b

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgwf;->q:Z

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgwf;->c(Ljava/nio/ByteBuffer;)V

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_36

    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwf;->w:Ljava/nio/ByteBuffer;

    :cond_36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwf;->s:Ljava/nio/ByteBuffer;
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3d

    monitor-exit p0

    return-void

    :cond_3b
    monitor-exit p0

    return-void

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwf;->o:Ljava/lang/String;

    return-object v0
.end method

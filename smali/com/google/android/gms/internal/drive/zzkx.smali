###### Class com.google.android.gms.internal.drive.zzkx (com.google.android.gms.internal.drive.zzkx)
.class public Lcom/google/android/gms/internal/drive/zzkx;
.super Ljava/lang/Object;


# static fields
.field private static final d:Lcom/google/android/gms/internal/drive/zzjx;


# instance fields
.field private a:Lcom/google/android/gms/internal/drive/zzjc;

.field private volatile b:Lcom/google/android/gms/internal/drive/zzlq;

.field private volatile c:Lcom/google/android/gms/internal/drive/zzjc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzjx;->b()Lcom/google/android/gms/internal/drive/zzjx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/drive/zzkx;->d:Lcom/google/android/gms/internal/drive/zzjx;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Lcom/google/android/gms/internal/drive/zzlq;)Lcom/google/android/gms/internal/drive/zzlq;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->b:Lcom/google/android/gms/internal/drive/zzlq;

    if-nez v0, :cond_1d

    .line 2
    monitor-enter p0

    .line 3
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->b:Lcom/google/android/gms/internal/drive/zzlq;

    if-eqz v0, :cond_b

    .line 4
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1a

    goto :goto_1d

    .line 5
    :cond_b
    :try_start_b
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzkx;->b:Lcom/google/android/gms/internal/drive/zzlq;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/drive/zzjc;->p:Lcom/google/android/gms/internal/drive/zzjc;

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->c:Lcom/google/android/gms/internal/drive/zzjc;
    :try_end_11
    .catch Lcom/google/android/gms/internal/drive/zzkq; {:try_start_b .. :try_end_11} :catch_12
    .catchall {:try_start_b .. :try_end_11} :catchall_1a

    goto :goto_18

    .line 7
    :catch_12
    :try_start_12
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzkx;->b:Lcom/google/android/gms/internal/drive/zzlq;

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/drive/zzjc;->p:Lcom/google/android/gms/internal/drive/zzjc;

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzkx;->c:Lcom/google/android/gms/internal/drive/zzjc;

    .line 9
    :goto_18
    monitor-exit p0

    goto :goto_1d

    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw p1

    .line 10
    :cond_1d
    :goto_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzkx;->b:Lcom/google/android/gms/internal/drive/zzlq;

    return-object p1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/drive/zzjc;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->c:Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->c:Lcom/google/android/gms/internal/drive/zzjc;

    return-object v0

    .line 3
    :cond_7
    monitor-enter p0

    .line 4
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->c:Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz v0, :cond_10

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->c:Lcom/google/android/gms/internal/drive/zzjc;

    monitor-exit p0

    return-object v0

    .line 6
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->b:Lcom/google/android/gms/internal/drive/zzlq;

    if-nez v0, :cond_19

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/drive/zzjc;->p:Lcom/google/android/gms/internal/drive/zzjc;

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->c:Lcom/google/android/gms/internal/drive/zzjc;

    goto :goto_21

    .line 8
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->b:Lcom/google/android/gms/internal/drive/zzlq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzlq;->b()Lcom/google/android/gms/internal/drive/zzjc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->c:Lcom/google/android/gms/internal/drive/zzjc;

    .line 9
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->c:Lcom/google/android/gms/internal/drive/zzjc;

    monitor-exit p0

    return-object v0

    :catchall_25
    move-exception v0

    .line 10
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public final b()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->c:Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->c:Lcom/google/android/gms/internal/drive/zzjc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result v0

    return v0

    .line 3
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->b:Lcom/google/android/gms/internal/drive/zzlq;

    if-eqz v0, :cond_16

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->b:Lcom/google/android/gms/internal/drive/zzlq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzlq;->f()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Lcom/google/android/gms/internal/drive/zzlq;)Lcom/google/android/gms/internal/drive/zzlq;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->b:Lcom/google/android/gms/internal/drive/zzlq;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/google/android/gms/internal/drive/zzkx;->a:Lcom/google/android/gms/internal/drive/zzjc;

    .line 3
    iput-object v1, p0, Lcom/google/android/gms/internal/drive/zzkx;->c:Lcom/google/android/gms/internal/drive/zzjc;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzkx;->b:Lcom/google/android/gms/internal/drive/zzlq;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/drive/zzkx;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkx;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkx;->b:Lcom/google/android/gms/internal/drive/zzlq;

    .line 4
    iget-object v1, p1, Lcom/google/android/gms/internal/drive/zzkx;->b:Lcom/google/android/gms/internal/drive/zzlq;

    if-nez v0, :cond_21

    if-nez v1, :cond_21

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkx;->a()Lcom/google/android/gms/internal/drive/zzjc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzkx;->a()Lcom/google/android/gms/internal/drive/zzjc;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzjc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_21
    if-eqz v0, :cond_2a

    if-eqz v1, :cond_2a

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2a
    if-eqz v0, :cond_39

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzls;->a()Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/drive/zzkx;->c(Lcom/google/android/gms/internal/drive/zzlq;)Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 8
    :cond_39
    invoke-interface {v1}, Lcom/google/android/gms/internal/drive/zzls;->a()Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzkx;->c(Lcom/google/android/gms/internal/drive/zzlq;)Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

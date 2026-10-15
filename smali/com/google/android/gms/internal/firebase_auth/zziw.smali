###### Class com.google.android.gms.internal.firebase_auth.zziw (com.google.android.gms.internal.firebase_auth.zziw)
.class public Lcom/google/android/gms/internal/firebase_auth/zziw;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# static fields
.field private static final d:Lcom/google/android/gms/internal/firebase_auth/zzhs;


# instance fields
.field private a:Lcom/google/android/gms/internal/firebase_auth/zzgv;

.field private volatile b:Lcom/google/android/gms/internal/firebase_auth/zzjn;

.field private volatile c:Lcom/google/android/gms/internal/firebase_auth/zzgv;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzhs;->a()Lcom/google/android/gms/internal/firebase_auth/zzhs;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zziw;->d:Lcom/google/android/gms/internal/firebase_auth/zzhs;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Lcom/google/android/gms/internal/firebase_auth/zzjn;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->b:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    if-nez v0, :cond_1d

    .line 2
    monitor-enter p0

    .line 3
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->b:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    if-eqz v0, :cond_b

    .line 4
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1a

    goto :goto_1d

    .line 5
    :cond_b
    :try_start_b
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->b:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgv;->p:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->c:Lcom/google/android/gms/internal/firebase_auth/zzgv;
    :try_end_11
    .catch Lcom/google/android/gms/internal/firebase_auth/zzin; {:try_start_b .. :try_end_11} :catch_12
    .catchall {:try_start_b .. :try_end_11} :catchall_1a

    goto :goto_18

    .line 7
    :catch_12
    :try_start_12
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->b:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzgv;->p:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->c:Lcom/google/android/gms/internal/firebase_auth/zzgv;

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
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->b:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Lcom/google/android/gms/internal/firebase_auth/zzjn;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->b:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->a:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 3
    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->c:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->b:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    return-object v0
.end method

.method public final b()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->c:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->c:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->g()I

    move-result v0

    return v0

    .line 3
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->b:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    if-eqz v0, :cond_16

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->b:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_auth/zzjn;->A()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Lcom/google/android/gms/internal/firebase_auth/zzgv;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->c:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->c:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    return-object v0

    .line 3
    :cond_7
    monitor-enter p0

    .line 4
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->c:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    if-eqz v0, :cond_10

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->c:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    monitor-exit p0

    return-object v0

    .line 6
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->b:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    if-nez v0, :cond_19

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgv;->p:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->c:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    goto :goto_21

    .line 8
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->b:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_auth/zzjn;->C()Lcom/google/android/gms/internal/firebase_auth/zzgv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->c:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 9
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->c:Lcom/google/android/gms/internal/firebase_auth/zzgv;

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

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase_auth/zziw;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zziw;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zziw;->b:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    .line 4
    iget-object v1, p1, Lcom/google/android/gms/internal/firebase_auth/zziw;->b:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    if-nez v0, :cond_21

    if-nez v1, :cond_21

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zziw;->d()Lcom/google/android/gms/internal/firebase_auth/zzgv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zziw;->d()Lcom/google/android/gms/internal/firebase_auth/zzgv;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->equals(Ljava/lang/Object;)Z

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
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_auth/zzjp;->a()Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zziw;->c(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 8
    :cond_39
    invoke-interface {v1}, Lcom/google/android/gms/internal/firebase_auth/zzjp;->a()Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zziw;->c(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Lcom/google/android/gms/internal/firebase_auth/zzjn;

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

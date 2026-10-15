###### Class com.google.android.gms.internal.measurement.zzjo (com.google.android.gms.internal.measurement.zzjo)
.class public final Lcom/google/android/gms/internal/measurement/zzjo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@20.1.2"


# static fields
.field private static volatile b:Lcom/google/android/gms/internal/measurement/zzjo;

.field private static volatile c:Lcom/google/android/gms/internal/measurement/zzjo;

.field static final d:Lcom/google/android/gms/internal/measurement/zzjo;


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjo;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjo;->d:Lcom/google/android/gms/internal/measurement/zzjo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->a:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjo;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/measurement/zzjo;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjo;->b:Lcom/google/android/gms/internal/measurement/zzjo;

    if-nez v0, :cond_14

    const-class v1, Lcom/google/android/gms/internal/measurement/zzjo;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjo;->b:Lcom/google/android/gms/internal/measurement/zzjo;

    if-nez v0, :cond_f

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjo;->d:Lcom/google/android/gms/internal/measurement/zzjo;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjo;->b:Lcom/google/android/gms/internal/measurement/zzjo;

    :cond_f
    monitor-exit v1

    goto :goto_14

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :goto_14
    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/measurement/zzjo;
    .registers 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzjo;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzjo;->c:Lcom/google/android/gms/internal/measurement/zzjo;

    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    monitor-enter v0

    :try_start_8
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzjo;->c:Lcom/google/android/gms/internal/measurement/zzjo;

    if-eqz v1, :cond_e

    monitor-exit v0

    return-object v1

    .line 2
    :cond_e
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjw;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzjo;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzjo;->c:Lcom/google/android/gms/internal/measurement/zzjo;

    .line 3
    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/measurement/zzlj;I)Lcom/google/android/gms/internal/measurement/zzka;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->a:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzjn;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjn;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzka;

    return-object p1
.end method

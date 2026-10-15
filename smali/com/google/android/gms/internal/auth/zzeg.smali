###### Class com.google.android.gms.internal.auth.zzeg (com.google.android.gms.internal.auth.zzeg)
.class public final Lcom/google/android/gms/internal/auth/zzeg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# static fields
.field private static volatile b:Lcom/google/android/gms/internal/auth/zzeg;

.field static final c:Lcom/google/android/gms/internal/auth/zzeg;


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/auth/zzeg;

    const/4 v1, 0x1

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzeg;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzeg;->c:Lcom/google/android/gms/internal/auth/zzeg;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzeg;->a:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzeg;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/auth/zzeg;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/auth/zzeg;->b:Lcom/google/android/gms/internal/auth/zzeg;

    if-nez v0, :cond_14

    const-class v1, Lcom/google/android/gms/internal/auth/zzeg;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/auth/zzeg;->b:Lcom/google/android/gms/internal/auth/zzeg;

    if-nez v0, :cond_f

    sget-object v0, Lcom/google/android/gms/internal/auth/zzeg;->c:Lcom/google/android/gms/internal/auth/zzeg;

    sput-object v0, Lcom/google/android/gms/internal/auth/zzeg;->b:Lcom/google/android/gms/internal/auth/zzeg;

    .line 1
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

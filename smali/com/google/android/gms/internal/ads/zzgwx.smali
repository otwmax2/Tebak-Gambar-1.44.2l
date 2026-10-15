###### Class com.google.android.gms.internal.ads.zzgwx (com.google.android.gms.internal.ads.zzgwx)
.class public final Lcom/google/android/gms/internal/ads/zzgwx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgxl;
.implements Lcom/google/android/gms/internal/ads/zzgws;


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field private volatile a:Lcom/google/android/gms/internal/ads/zzgxl;

.field private volatile b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgwx;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwx;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwx;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwx;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzgxl;)Lcom/google/android/gms/internal/ads/zzgws;
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzgws;

    if-eqz v0, :cond_7

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/ads/zzgws;

    return-object p0

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwx;

    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgwx;-><init>(Lcom/google/android/gms/internal/ads/zzgxl;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzgxl;)Lcom/google/android/gms/internal/ads/zzgxl;
    .registers 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzgwx;

    if-eqz v0, :cond_8

    return-object p0

    .line 3
    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwx;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgwx;-><init>(Lcom/google/android/gms/internal/ads/zzgxl;)V

    return-object v0
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwx;->b:Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgwx;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_46

    monitor-enter p0

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwx;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwx;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgwx;->b:Ljava/lang/Object;

    if-eq v2, v1, :cond_3c

    if-ne v2, v0, :cond_18

    goto :goto_3c

    .line 2
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scoped provider was invoked recursively returning different results: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " & "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". This is likely due to a circular dependency."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_3c
    :goto_3c
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwx;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgwx;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    .line 5
    :cond_41
    monitor-exit p0

    goto :goto_46

    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_43

    throw v0

    :cond_46
    :goto_46
    return-object v0
.end method

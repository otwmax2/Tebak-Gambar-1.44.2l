###### Class com.google.android.gms.internal.common.zzx (com.google.android.gms.internal.common.zzx)
.class public final Lcom/google/android/gms/internal/common/zzx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# annotations
.annotation runtime Lorg/jspecify/nullness/NullMarked;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/common/zzo;

.field private final b:Z

.field private final c:Lcom/google/android/gms/internal/common/zzu;


# direct methods
.method static synthetic a(Lcom/google/android/gms/internal/common/zzx;)Lcom/google/android/gms/internal/common/zzo;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/common/zzx;->a:Lcom/google/android/gms/internal/common/zzo;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/common/zzx;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/common/zzx;->d(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/common/zzx;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/common/zzx;->b:Z

    return p0
.end method

.method private final d(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzx;->c:Lcom/google/android/gms/internal/common/zzu;

    new-instance v1, Lcom/google/android/gms/internal/common/zzt;

    invoke-direct {v1, v0, p0, p1}, Lcom/google/android/gms/internal/common/zzt;-><init>(Lcom/google/android/gms/internal/common/zzu;Lcom/google/android/gms/internal/common/zzx;Ljava/lang/CharSequence;)V

    return-object v1
.end method

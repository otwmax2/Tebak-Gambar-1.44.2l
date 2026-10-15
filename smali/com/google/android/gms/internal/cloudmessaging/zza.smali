###### Class com.google.android.gms.internal.cloudmessaging.zza (com.google.android.gms.internal.cloudmessaging.zza)
.class public final Lcom/google/android/gms/internal/cloudmessaging/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/cloudmessaging/zzb;

.field private static volatile b:Lcom/google/android/gms/internal/cloudmessaging/zzb;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cloudmessaging/zzc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cloudmessaging/zzc;-><init>(Lcom/google/android/gms/internal/cloudmessaging/zzd;)V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/cloudmessaging/zza;->a:Lcom/google/android/gms/internal/cloudmessaging/zzb;

    sput-object v0, Lcom/google/android/gms/internal/cloudmessaging/zza;->b:Lcom/google/android/gms/internal/cloudmessaging/zzb;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/cloudmessaging/zzb;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cloudmessaging/zza;->b:Lcom/google/android/gms/internal/cloudmessaging/zzb;

    return-object v0
.end method

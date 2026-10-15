###### Class com.google.android.gms.internal.firebase_auth.zzf (com.google.android.gms.internal.firebase_auth.zzf)
.class public final Lcom/google/android/gms/internal/firebase_auth/zzf;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# static fields
.field private static final a:Lcom/google/android/gms/internal/firebase_auth/zzg;

.field private static volatile b:Lcom/google/android/gms/internal/firebase_auth/zzg;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzh;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzi;)V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzf;->a:Lcom/google/android/gms/internal/firebase_auth/zzg;

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzf;->b:Lcom/google/android/gms/internal/firebase_auth/zzg;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/firebase_auth/zzg;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzf;->b:Lcom/google/android/gms/internal/firebase_auth/zzg;

    return-object v0
.end method

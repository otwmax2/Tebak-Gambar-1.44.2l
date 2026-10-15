###### Class com.google.android.gms.internal.auth.zzau (com.google.android.gms.internal.auth.zzau)
.class public final Lcom/google/android/gms/internal/auth/zzau;
.super Lcom/google/android/gms/internal/auth/zza;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.android.gms.auth.api.accounttransfer.internal.IAccountTransferService"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

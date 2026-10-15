###### Class com.google.android.gms.internal.consent_sdk.zzau (com.google.android.gms.internal.consent_sdk.zzau)
.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzau;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@2.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/consent_sdk/zzay;


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzau;->o:Lcom/google/android/gms/internal/consent_sdk/zzay;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzj;

    const/4 v2, 0x4

    const-string v3, "Web view timed out."

    .line 1
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/consent_sdk/zzj;-><init>(ILjava/lang/String;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzay;->e(Lcom/google/android/gms/internal/consent_sdk/zzj;)V

    return-void
.end method

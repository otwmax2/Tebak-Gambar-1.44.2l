###### Class com.google.android.gms.internal.consent_sdk.zzs (com.google.android.gms.internal.consent_sdk.zzs)
.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzs;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@2.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lz4/b;

.field public final synthetic p:Lcom/google/android/gms/internal/consent_sdk/zzj;


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzs;->o:Lz4/b;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzs;->p:Lcom/google/android/gms/internal/consent_sdk/zzj;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzj;->a()Lz4/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lz4/b;->a(Lz4/e;)V

    return-void
.end method

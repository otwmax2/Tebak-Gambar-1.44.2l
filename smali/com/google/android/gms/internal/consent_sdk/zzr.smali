###### Class com.google.android.gms.internal.consent_sdk.zzr (com.google.android.gms.internal.consent_sdk.zzr)
.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzr;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@2.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/consent_sdk/zzv;

.field public final synthetic p:Lz4/c;


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzr;->o:Lcom/google/android/gms/internal/consent_sdk/zzv;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzr;->p:Lz4/c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzv;->a(Lz4/c;)V

    return-void
.end method

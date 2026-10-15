###### Class com.google.android.gms.internal.consent_sdk.zzbi (com.google.android.gms.internal.consent_sdk.zzbi)
.class public final Lcom/google/android/gms/internal/consent_sdk/zzbi;
.super Landroid/content/ContextWrapper;
.source "com.google.android.ump:user-messaging-platform@@2.0.0"


# instance fields
.field private a:Landroid/app/Activity;


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbi;->a:Landroid/app/Activity;

    return-void
.end method

.method public final getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbi;->a:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 1
    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_9
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final startActivity(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbi;->a:Landroid/app/Activity;

    if-eqz v0, :cond_8

    .line 1
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_8
    const/high16 v0, 0x10000000

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class com.google.android.gms.internal.consent_sdk.zzv (com.google.android.gms.internal.consent_sdk.zzv)
.class final Lcom/google/android/gms/internal/consent_sdk/zzv;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@2.0.0"


# instance fields
.field private final a:Landroid/os/Handler;


# virtual methods
.method public final synthetic a(Lz4/c;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->a:Landroid/os/Handler;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/consent_sdk/zzu;-><init>(Lz4/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic b(Landroid/app/Activity;Lz4/d;Lz4/c;Lz4/b;)V
    .registers 6

    const/4 p1, 0x0

    .line 1
    :try_start_1
    throw p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_2} :catch_2

    :catch_2
    move-exception p1

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/consent_sdk/zzj;

    .line 3
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Caught exception when trying to request consent info update: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1f

    .line 4
    :cond_1a
    new-instance p1, Ljava/lang/String;

    .line 5
    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1f
    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/consent_sdk/zzj;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->a:Landroid/os/Handler;

    new-instance p3, Lcom/google/android/gms/internal/consent_sdk/zzt;

    .line 6
    invoke-direct {p3, p4, p2}, Lcom/google/android/gms/internal/consent_sdk/zzt;-><init>(Lz4/b;Lcom/google/android/gms/internal/consent_sdk/zzj;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.google.android.gms.internal.consent_sdk.zzt (com.google.android.gms.internal.consent_sdk.zzt)
.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzt;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@2.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lz4/b;

.field public final synthetic p:Lcom/google/android/gms/internal/consent_sdk/zzj;


# direct methods
.method public synthetic constructor <init>(Lz4/b;Lcom/google/android/gms/internal/consent_sdk/zzj;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzt;->o:Lz4/b;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzt;->p:Lcom/google/android/gms/internal/consent_sdk/zzj;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzt;->o:Lz4/b;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzt;->p:Lcom/google/android/gms/internal/consent_sdk/zzj;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzj;->a()Lz4/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lz4/b;->a(Lz4/e;)V

    return-void
.end method

###### Class com.google.android.gms.internal.consent_sdk.zzu (com.google.android.gms.internal.consent_sdk.zzu)
.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzu;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@2.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lz4/c;


# direct methods
.method public synthetic constructor <init>(Lz4/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzu;->o:Lz4/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzu;->o:Lz4/c;

    invoke-interface {v0}, Lz4/c;->a()V

    return-void
.end method

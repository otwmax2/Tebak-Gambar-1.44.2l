###### Class com.google.android.gms.internal.consent_sdk.zzbg (com.google.android.gms.internal.consent_sdk.zzbg)
.class public final Lcom/google/android/gms/internal/consent_sdk/zzbg;
.super Landroid/webkit/WebView;
.source "com.google.android.ump:user-messaging-platform@@2.0.0"


# instance fields
.field private final o:Landroid/os/Handler;

.field private final p:Lcom/google/android/gms/internal/consent_sdk/zzbm;

.field private q:Z


# direct methods
.method static synthetic a(Lcom/google/android/gms/internal/consent_sdk/zzbg;)Lcom/google/android/gms/internal/consent_sdk/zzbm;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbg;->p:Lcom/google/android/gms/internal/consent_sdk/zzbm;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/consent_sdk/zzbg;Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_c

    const-string p0, "consent://"

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/consent_sdk/zzbg;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbg;->q:Z

    return p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/consent_sdk/zzbg;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbg;->q:Z

    return p1
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbg;->o:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzbd;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbd;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbg;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.google.android.gms.internal.consent_sdk.zzbd (com.google.android.gms.internal.consent_sdk.zzbd)
.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzbd;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@2.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/consent_sdk/zzbg;

.field public final synthetic p:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzbg;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbd;->o:Lcom/google/android/gms/internal/consent_sdk/zzbg;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbd;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbd;->o:Lcom/google/android/gms/internal/consent_sdk/zzbg;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbd;->p:Ljava/lang/String;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzce;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

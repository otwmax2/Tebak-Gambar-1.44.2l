###### Class com.google.android.gms.internal.ads.zzbpw (com.google.android.gms.internal.ads.zzbpw)
.class final Lcom/google/android/gms/internal/ads/zzbpw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzbpx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbpx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpw;->o:Lcom/google/android/gms/internal/ads/zzbpx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpw;->o:Lcom/google/android/gms/internal/ads/zzbpx;

    const-string p2, "Operation denied by user."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbqf;->c(Ljava/lang/String;)V

    return-void
.end method

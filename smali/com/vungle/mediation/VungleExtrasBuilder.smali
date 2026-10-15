###### Class com.vungle.mediation.VungleExtrasBuilder (com.vungle.mediation.VungleExtrasBuilder)
.class public final Lcom/vungle/mediation/VungleExtrasBuilder;
.super Ljava/lang/Object;
.source "VungleExtrasBuilder.java"


# static fields
.field public static final EXTRA_USER_ID:Ljava/lang/String; = "userId"


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vungle/mediation/VungleExtrasBuilder;->a:Landroid/os/Bundle;

    const-string v1, "allPlacements"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static adConfigWithNetworkExtras(Landroid/os/Bundle;Z)Lcom/vungle/warren/AdConfig;
    .registers 4

    .line 1
    new-instance v0, Lcom/vungle/warren/AdConfig;

    invoke-direct {v0}, Lcom/vungle/warren/AdConfig;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/vungle/warren/AdConfig;->setMuted(Z)V

    if-eqz p0, :cond_27

    const-string v1, "startMuted"

    .line 3
    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/vungle/warren/AdConfig;->setMuted(Z)V

    const/4 p1, 0x0

    const-string v1, "ordinalViewCount"

    .line 4
    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/vungle/warren/AdConfig;->setOrdinal(I)V

    const/4 p1, 0x2

    const-string v1, "adOrientation"

    .line 5
    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/vungle/warren/AdConfig;->setAdOrientation(I)V

    :cond_27
    return-object v0
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleExtrasBuilder;->a:Landroid/os/Bundle;

    const-string v1, "uniqueVungleRequestKey"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2
    iget-object v0, p0, Lcom/vungle/mediation/VungleExtrasBuilder;->a:Landroid/os/Bundle;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_1c
    iget-object v0, p0, Lcom/vungle/mediation/VungleExtrasBuilder;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public setAdOrientation(I)Lcom/vungle/mediation/VungleExtrasBuilder;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleExtrasBuilder;->a:Landroid/os/Bundle;

    const-string v1, "adOrientation"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setBannerUniqueRequestID(Ljava/lang/String;)Lcom/vungle/mediation/VungleExtrasBuilder;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleExtrasBuilder;->a:Landroid/os/Bundle;

    const-string v1, "uniqueVungleRequestKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOrdinalViewCount(I)Lcom/vungle/mediation/VungleExtrasBuilder;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleExtrasBuilder;->a:Landroid/os/Bundle;

    const-string v1, "ordinalViewCount"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setPlayingPlacement(Ljava/lang/String;)Lcom/vungle/mediation/VungleExtrasBuilder;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleExtrasBuilder;->a:Landroid/os/Bundle;

    const-string v1, "playPlacement"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSoundEnabled(Z)Lcom/vungle/mediation/VungleExtrasBuilder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/vungle/mediation/VungleExtrasBuilder;->setStartMuted(Z)Lcom/vungle/mediation/VungleExtrasBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setStartMuted(Z)Lcom/vungle/mediation/VungleExtrasBuilder;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleExtrasBuilder;->a:Landroid/os/Bundle;

    const-string v1, "startMuted"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/vungle/mediation/VungleExtrasBuilder;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleExtrasBuilder;->a:Landroid/os/Bundle;

    const-string v1, "userId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

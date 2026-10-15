###### Class com.twitter.sdk.android.core.identity.OAuthActivity (com.twitter.sdk.android.core.identity.OAuthActivity)
.class public Lcom/twitter/sdk/android/core/identity/OAuthActivity;
.super Landroid/app/Activity;
.source "OAuthActivity.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/identity/a$c;


# instance fields
.field o:Lcom/twitter/sdk/android/core/identity/a;

.field private p:Landroid/widget/ProgressBar;

.field private q:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->o:Lcom/twitter/sdk/android/core/identity/a;

    new-instance v1, Lcom/twitter/sdk/android/core/s;

    const-string v2, "Authorization failed, request was canceled."

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/s;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/twitter/sdk/android/core/identity/a;->i(ILcom/twitter/sdk/android/core/s;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget v0, Lcom/twitter/sdk/android/core/k;->a:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    sget v0, Lcom/twitter/sdk/android/core/j;->a:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->p:Landroid/widget/ProgressBar;

    .line 4
    sget v0, Lcom/twitter/sdk/android/core/j;->b:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->q:Landroid/webkit/WebView;

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    const-string v1, "progress"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_27

    :cond_26
    const/4 p1, 0x1

    .line 6
    :goto_27
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->p:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2c

    goto :goto_2e

    :cond_2c
    const/16 v0, 0x8

    :goto_2e
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    invoke-static {}, Lcom/twitter/sdk/android/core/x;->h()Lcom/twitter/sdk/android/core/x;

    move-result-object p1

    .line 8
    new-instance v6, Lcom/twitter/sdk/android/core/identity/a;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->p:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->q:Landroid/webkit/WebView;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "auth_config"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/twitter/sdk/android/core/r;

    new-instance v4, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    new-instance v0, Lc9/j;

    invoke-direct {v0}, Lc9/j;-><init>()V

    invoke-direct {v4, p1, v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;-><init>(Lcom/twitter/sdk/android/core/x;Lc9/j;)V

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/identity/a;-><init>(Landroid/widget/ProgressBar;Landroid/webkit/WebView;Lcom/twitter/sdk/android/core/r;Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;Lcom/twitter/sdk/android/core/identity/a$c;)V

    iput-object v6, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->o:Lcom/twitter/sdk/android/core/identity/a;

    .line 10
    invoke-virtual {v6}, Lcom/twitter/sdk/android/core/identity/a;->o()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    const-string v1, "progress"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

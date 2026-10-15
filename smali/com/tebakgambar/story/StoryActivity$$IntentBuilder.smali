###### Class com.tebakgambar.story.StoryActivity$$IntentBuilder (com.tebakgambar.story.StoryActivity$$IntentBuilder)
.class public Lcom/tebakgambar/story/StoryActivity$$IntentBuilder;
.super Ljava/lang/Object;
.source "StoryActivity$$IntentBuilder.java"


# instance fields
.field private bundler:Lz2/a;

.field private intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lz2/a;->a()Lz2/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/story/StoryActivity$$IntentBuilder;->bundler:Lz2/a;

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tebakgambar/story/StoryActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/tebakgambar/story/StoryActivity$$IntentBuilder;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity$$IntentBuilder;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/tebakgambar/story/StoryActivity$$IntentBuilder;->bundler:Lz2/a;

    invoke-virtual {v1}, Lz2/a;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/story/StoryActivity$$IntentBuilder;->intent:Landroid/content/Intent;

    return-object v0
.end method

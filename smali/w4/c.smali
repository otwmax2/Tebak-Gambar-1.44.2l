###### Class w4.c (w4.c)
.class final Lw4/c;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field final synthetic a:Lw4/d;


# direct methods
.method synthetic constructor <init>(Lw4/d;Lw4/b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lw4/c;->a:Lw4/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lw4/c;->a:Lw4/d;

    invoke-virtual {v0, p1, p2}, Lw4/d;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

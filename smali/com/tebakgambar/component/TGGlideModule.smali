###### Class com.tebakgambar.component.TGGlideModule (com.tebakgambar.component.TGGlideModule)
.class public Lcom/tebakgambar/component/TGGlideModule;
.super Ljava/lang/Object;
.source "TGGlideModule.java"

# interfaces
.implements Lr2/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lv1/g;)V
    .registers 3

    return-void
.end method

.method public b(Landroid/content/Context;Lv1/h;)V
    .registers 5

    .line 1
    new-instance v0, Ld2/f;

    const v1, 0x4c4b40

    invoke-direct {v0, p1, v1}, Ld2/f;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Lv1/h;->b(Ld2/a$a;)Lv1/h;

    return-void
.end method

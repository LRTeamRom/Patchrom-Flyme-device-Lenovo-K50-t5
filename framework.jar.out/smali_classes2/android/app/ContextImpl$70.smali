.class final Landroid/app/ContextImpl$70;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 887
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 889
    const-string v1, "rns"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 890
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Lcom/mediatek/rns/RnsManager;

    invoke-static {v0}, Lcom/mediatek/rns/IRnsManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/rns/IRnsManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/rns/RnsManager;-><init>(Lcom/mediatek/rns/IRnsManager;)V

    return-object v1
.end method
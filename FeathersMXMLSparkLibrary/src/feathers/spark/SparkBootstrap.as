/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import feathers.core.StarlingBootstrap;
    import feathers.utils.display.calculateScaleRatioToFill;
    import feathers.utils.display.calculateScaleRatioToFit;
    import feathers.utils.math.roundToPrecision;

    import flash.display.DisplayObject;
    import flash.display.Sprite;

    import flash.display.StageScaleMode;

    import starling.events.Event;

    public class SparkBootstrap extends StarlingBootstrap
    {
        private var _preloader:Object;

        public function SparkBootstrap()
        {
            super();

            var inf:Object = info();

            if (inf['originalWidth'] && inf['originalHeight'])
            {
                var scaleMode:String =  inf['scaleMode'] ? inf['scaleMode'] : StageScaleMode.NO_BORDER;
                SparkGlobal.scale = scaleMode == StageScaleMode.NO_BORDER ?
                        roundToPrecision(calculateScaleRatioToFill(inf['originalWidth'], inf['originalHeight'], this.stage.fullScreenWidth, this.stage.fullScreenHeight), 2) :
                        roundToPrecision(calculateScaleRatioToFit(inf['originalWidth'], inf['originalHeight'], this.stage.fullScreenWidth, this.stage.fullScreenHeight), 2);

                trace("Spark: ScreenWidth: " + this.stage.fullScreenWidth);
                trace("Spark: ScreenHeight: " +  this.stage.fullScreenHeight);
                trace("Spark: Scale: " + SparkGlobal.scale);
            }

            if (preloader)
            {
                if (SparkGlobal.scale)
                {
                    preloader.scaleX =  SparkGlobal.scale;
                    preloader.scaleY = SparkGlobal.scale;
                }
                preloader.x =  (this.stage.fullScreenWidth - preloader.width)/2;
                preloader.y =  (this.stage.fullScreenHeight - preloader.height)/2;

                preloader.cacheAsBitmap = true;
                addChild(preloader);
            }

            VectorClip.container = this;
        }

        override protected function starling_rootCreatedHandler(event:starling.events.Event):void
        {
            if (preloader)
            {
                removeChild(preloader);
            }
            super.starling_rootCreatedHandler(event);
        }

        protected function get preloader():DisplayObject
        {
            if (!_preloader)
            {
                if (info().preloader)
                {
                    _preloader = new (info().preloader)();
                    if (_preloader is ISparkPreloader && info().splashScreenImage)
                    {
                        _preloader.splashScreenImage = info().splashScreenImage;
                    }
                }
                else if (info().splashScreenImage)
                {
                    _preloader = new (info().splashScreenImage)();
                }
            }
            return _preloader as DisplayObject;
        }
    }
}
